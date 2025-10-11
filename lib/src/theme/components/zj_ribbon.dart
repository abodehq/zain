import 'package:flutter/material.dart';

@immutable
class ZjRibbon extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Alignment alignment;
  final Color? color;
  final Color? textColor;
  final bool rotated;
  final VoidCallback? onTap;
  final bool? useInkRipple;

  const ZjRibbon({
    super.key,
    required this.label,
    this.icon,
    this.alignment = Alignment.topRight,
    this.color,
    this.textColor,
    this.rotated = true,
    this.onTap,
    this.useInkRipple,
  });

  static const _padding = EdgeInsets.symmetric(horizontal: 10, vertical: 6);
  static const _iconSpacing = 4.0;
  static const _borderRadius = BorderRadius.all(Radius.circular(6));

  bool _isInsideScrollable(BuildContext context) {
    return Scrollable.of(context) != null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final autoRipple = useInkRipple ?? !_isInsideScrollable(context);
    final bgColor = color ?? colorScheme.primary;
    final fgColor = textColor ?? colorScheme.onPrimary;

    final textWidget = Text(
      label,
      style: theme.textTheme.labelMedium?.copyWith(
        color: fgColor,
        fontWeight: FontWeight.w600,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );

    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(icon, size: 14, color: fgColor),
          const SizedBox(width: _iconSpacing),
        ],
        textWidget,
      ],
    );

    final child = Padding(
      padding: _padding,
      child: content,
    );

    final Widget core = autoRipple
        ? Material(
      color: bgColor,
      borderRadius: _borderRadius,
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onTap,
        child: child,
      ),
    )
        : GestureDetector(
      onTap: onTap,
      child: Container(
        padding: _padding,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: _borderRadius,
        ),
        child: content,
      ),
    );

    final rotatedRibbon = rotated
        ? Transform.rotate(angle: -0.78539816339, child: core) // -45° in radians
        : core;

    return RepaintBoundary(
      child: Align(
        alignment: alignment,
        child: rotatedRibbon,
      ),
    );
  }
}
