import 'package:flutter/material.dart';

class ZjRadio<T> extends StatelessWidget {
  final T value;
  final Widget title; // 👈 custom text widget
  final Widget? subtitle;
  //final Color? activeColor;

  const ZjRadio({
    super.key,
    required this.value,
    required this.title,
    this.subtitle,
    //this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // tapping anywhere selects this radio
        RadioGroup.maybeOf<T>(context)?.onChanged?.call(value);
      },
      child: Row(
        children: [
          Radio<T>(
            value: value,
            // ✅ no groupValue, RadioGroup ancestor handles it
           // activeColor: activeColor ?? Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                if (subtitle != null) ...[
                  const SizedBox(height: 2),
                  DefaultTextStyle(
                    style: Theme.of(context).textTheme.bodySmall!,
                    child: subtitle!,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
