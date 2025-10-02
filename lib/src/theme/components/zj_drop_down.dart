import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

/// Base Dropdown Component with dynamic fill color (Flutter 3.2+)
class ZjDropdown<T> extends StatefulWidget {
  final String? hintText;
  final IconData? startIcon;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final String? Function(T?)? validator;

  const ZjDropdown({
    super.key,
    this.hintText,
    this.startIcon,
    required this.items,
    this.value,
    this.onChanged,
    this.validator,
  });

  @override
  State<ZjDropdown<T>> createState() => _ZjDropdownState<T>();
}

class _ZjDropdownState<T> extends State<ZjDropdown<T>> {
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

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasFocus,
      builder: (context, isFocused, _) {
        return ValueListenableBuilder<bool>(
          valueListenable: _hasValue,
          builder: (context, hasValue, _) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: isFocused
                    ? [
                  BoxShadow(
                    color: ZjColors.secondary12,
                    blurRadius: 0,
                    spreadRadius: 4,
                    offset: Offset.zero,
                  ),
                ]
                    : [],
              ),
              child: DropdownButtonFormField<T>(
                focusNode: _focusNode,
                value: widget.value,
                validator: widget.validator,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: _getFillColor(isFocused, hasValue),
                  prefixIcon: widget.startIcon != null
                      ? Icon(widget.startIcon, size: 24.0)
                      : null,
                  hintText: widget.hintText ?? "Select option",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                ),
                items: widget.items,
                onChanged: (val) {
                  widget.onChanged?.call(val);
                  _hasValue.value = val != null;
                },
              ),
            );
          },
        );
      },
    );
  }
}
