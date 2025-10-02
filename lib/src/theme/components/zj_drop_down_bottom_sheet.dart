import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjDropdownItem<T> {
  final T value;
  final String title;
  final String? subtitle;

  const ZjDropdownItem({
    required this.value,
    required this.title,
    this.subtitle,
  });
}

enum ZjDropdownMode { none, radio, checkbox }

class ZjDropdownBottomSheet<T> extends StatefulWidget {
  final String? hintText;
  final IconData? startIcon;
  final List<ZjDropdownItem<T>> items;
  final T? value;
  final List<T>? values;
  final ZjDropdownMode mode;
  final ValueChanged<dynamic>? onChanged;

  const ZjDropdownBottomSheet({
    super.key,
    this.hintText,
    this.startIcon,
    required this.items,
    this.value,
    this.values,
    this.mode = ZjDropdownMode.none,
    this.onChanged,
  });

  @override
  State<ZjDropdownBottomSheet<T>> createState() =>
      _ZjDropdownBottomSheetState<T>();
}

class _ZjDropdownBottomSheetState<T> extends State<ZjDropdownBottomSheet<T>> {
  late FocusNode _focusNode;
  late ValueNotifier<bool> _hasFocus;
  late ValueNotifier<bool> _hasValue;
  late TextEditingController _controller;

  T? _selectedValue;
  List<T> _multiSelected = [];

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _hasFocus = ValueNotifier(false);
    _hasValue =
        ValueNotifier(widget.value != null || (widget.values?.isNotEmpty ?? false));

    _focusNode.addListener(() {
      _hasFocus.value = _focusNode.hasFocus;
    });

    _selectedValue = widget.value;
    _multiSelected = widget.values ?? [];
    _controller = TextEditingController();

    _updateControllerText();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _hasFocus.dispose();
    _hasValue.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _updateControllerText() {
    String text;
    if (widget.mode == ZjDropdownMode.checkbox) {
      text = _multiSelected
          .map((v) => widget.items.firstWhere((e) => e.value == v).title)
          .join(", ");
    } else {
      text = _selectedValue != null
          ? widget.items.firstWhere((e) => e.value == _selectedValue).title
          : '';
    }
    _controller.text = text;
  }

  Color _getFillColor(bool isFocused, bool hasValue) {
    if (isFocused) return ZjColors.white;
    if (!hasValue) return ZjColors.black2;
    return ZjColors.secondary2;
  }

  void _openBottomSheet() async {
    _focusNode.requestFocus();
    final result = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.separated(
                      itemCount: widget.items.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final item = widget.items[index];

                        if (widget.mode == ZjDropdownMode.radio) {
                          return RadioListTile<T>(
                            value: item.value,
                            groupValue: _selectedValue,
                            title: Text(item.title),
                            subtitle:
                            item.subtitle != null ? Text(item.subtitle!) : null,
                            onChanged: (val) {
                              setSheetState(() => _selectedValue = val);
                            },
                          );
                        }

                        if (widget.mode == ZjDropdownMode.checkbox) {
                          final isChecked = _multiSelected.contains(item.value);
                          return CheckboxListTile(
                            value: isChecked,
                            title: Text(item.title),
                            subtitle:
                            item.subtitle != null ? Text(item.subtitle!) : null,
                            onChanged: (checked) {
                              setSheetState(() {
                                if (checked == true) {
                                  _multiSelected.add(item.value);
                                } else {
                                  _multiSelected.remove(item.value);
                                }
                              });
                            },
                          );
                        }

                        return ListTile(
                          title: Text(item.title),
                          subtitle:
                          item.subtitle != null ? Text(item.subtitle!) : null,
                          onTap: () => Navigator.pop(context, item.value),
                        );
                      },
                    ),
                  ),
                  if (widget.mode == ZjDropdownMode.checkbox ||
                      widget.mode == ZjDropdownMode.radio)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (widget.mode == ZjDropdownMode.checkbox) {
                            Navigator.pop(context, _multiSelected);
                          } else {
                            Navigator.pop(context, _selectedValue);
                          }
                        },
                        child: const Text("Done"),
                      ),
                    ),
                ],
              ),
            );
          },
        );
      },
    );

    if (result != null) {
      if (widget.mode == ZjDropdownMode.checkbox) {
        setState(() => _multiSelected = List<T>.from(result));
        widget.onChanged?.call(result);
      } else {
        setState(() => _selectedValue = result);
        widget.onChanged?.call(result);
      }
      _updateControllerText();
      _hasValue.value = true;
    }

    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasFocus,
      builder: (context, isFocused, _) {
        return ValueListenableBuilder<bool>(
          valueListenable: _hasValue,
          builder: (context, hasValue, _) {
            return GestureDetector(
              onTap: _openBottomSheet,
              child: AbsorbPointer(
                child: TextFormField(
                  focusNode: _focusNode,
                  readOnly: true,
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: widget.hintText ?? "Select option",
                    filled: true,
                    fillColor: _getFillColor(isFocused, hasValue),
                    prefixIcon: widget.startIcon != null
                        ? Icon(widget.startIcon, size: 24.0)
                        : null,
                    suffixIcon: const Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
