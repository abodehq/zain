import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

class ZjDivider extends StatelessWidget {
  final String? label;
  final double? height;
  final Color? color;
  final Color? dividerTextColor;

  const ZjDivider({
    super.key,
    this.label,
    this.height = 2.0,
    this.color,
    this.dividerTextColor,
  });

  static const _labelPadding = EdgeInsets.symmetric(horizontal: 8);

  @override
  Widget build(BuildContext context) {
    final zjTheme = Theme.of(context).zjTheme;
    final dividerColor = color ?? Theme.of(context).dividerColor;
    final dividerThickness =  Theme.of(context).dividerTheme.thickness;
    final textColor = dividerTextColor ?? zjTheme.dividerTextColor;
    final hasLabel = label != null && label!.isNotEmpty;

    // Build divider once — reused for both sides
    final divider = Divider(
      color: dividerColor,
      height: height ?? 2.0,
      thickness: dividerThickness,
    );

    if (!hasLabel) return divider;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: divider),
        Padding(
          padding: _labelPadding,
          child: DividerText(label!, color: textColor),
        ),
        Expanded(child: divider),
      ],
    );
  }
}
