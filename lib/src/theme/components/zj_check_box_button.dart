import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

/// Lightweight, high-performance Zain styled Checkbox with label
class ZjCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;
  final bool enabled;

  const ZjCheckbox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  });

  // Predefined text styles to avoid runtime allocations
  static const TextStyle _enabledStyle = TextStyle(color: ZjColors.black87);
  static const TextStyle _disabledStyle = TextStyle(color: ZjColors.primary);

  @override
  Widget build(BuildContext context) {
    final textStyle = enabled ? _enabledStyle : _disabledStyle;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Checkbox handles taps itself
        Checkbox(value: value, onChanged: enabled ? onChanged : null),

        // SizedBox for spacing
        const SizedBox(width: 8),

        // GestureDetector around the label to toggle checkbox
        GestureDetector(
          onTap: enabled ? () => onChanged(!value) : null,
          behavior: HitTestBehavior.translucent,
          child: Text(label, style: textStyle),
        ),
      ],
    );
  }
}
