import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

/// Zain styled Checkbox with label
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? () => onChanged(!value) : null,
      //borderRadius: BorderRadius.circular(6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: value,
            onChanged: enabled ? onChanged : null,
            //activeColor: ZjColors.secondary2, // checked color
            //checkColor: ZjColors.white,       // checkmark color
            // side: BorderSide(
            //   color: enabled ? ZjColors.black2 : ZjColors.primary,
            //   width: 2,
            // ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(4),
            // ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: enabled ? ZjColors.black87 : ZjColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
