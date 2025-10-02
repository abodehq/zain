import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjDropdownBottomSheet<T> extends StatefulWidget {
  final String? hintText;
  final IconData? startIcon;
  final List<T> items;
  final T? value;
  final String Function(T) itemLabel;
  final ValueChanged<T?>? onChanged;

  const ZjDropdownBottomSheet({
    super.key,
    this.hintText,
    this.startIcon,
    required this.items,
    required this.itemLabel,
    this.value,
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

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _hasFocus = ValueNotifier(false);
    _hasValue = ValueNotifier(widget.value != null);

    _focusNode.addListener(() {
      _hasFocus.value = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _hasFocus.dispose();
    _hasValue.dispose();
    super.dispose();
  }

  Color _getFillColor(bool isFocused, bool hasValue) {
    if (isFocused) return ZjColors.white; // Focused color
    if (!hasValue) return ZjColors.black2; // Empty background
    return ZjColors.secondary2; // Selected background
  }

  void _openBottomSheet() async {
    _focusNode.requestFocus();
    final result = await showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true, // makes it fullscreen
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                  separatorBuilder: (_, __) => Divider(height: 1),
                  itemBuilder: (context, index) {
                    final item = widget.items[index];
                    return ListTile(
                      title: Text(widget.itemLabel(item)),
                      onTap: () => Navigator.pop(context, item),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    if (result != null) {
      widget.onChanged?.call(result);
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
                // prevents the default dropdown from opening
                child: TextFormField(
                  focusNode: _focusNode,
                  readOnly: true,
                  controller: TextEditingController(
                    text: widget.value != null
                        ? widget.itemLabel(widget.value as T)
                        : '',
                  ),
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
