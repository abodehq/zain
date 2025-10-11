import 'package:flutter/material.dart';

@immutable
class ZjChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final IconData? icon; // optional icon
  final bool iconAtEnd; // control position (default: before text)

  const ZjChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
    this.icon,
    this.iconAtEnd = false,
  });

  static const _radius = BorderRadius.all(Radius.circular(20));
  static const _padding = EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const _iconSpacing = 6.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final bgColor = selected ? colorScheme.primary : colorScheme.surfaceVariant;
    final textColor = selected ? colorScheme.onPrimary : colorScheme.onSurface;

    final textWidget = Text(
      label,
      style: theme.textTheme.bodyMedium?.copyWith(color: textColor),
      overflow: TextOverflow.ellipsis,
    );

    final iconWidget = icon != null
        ? Icon(icon, size: 18, color: textColor)
        : null;

    // Arrange children based on icon position
    final children = <Widget>[
      if (iconWidget != null && !iconAtEnd) ...[
        iconWidget,
        const SizedBox(width: _iconSpacing),
      ],
      textWidget,
      if (iconWidget != null && iconAtEnd) ...[
        const SizedBox(width: _iconSpacing),
        iconWidget,
      ],
    ];

    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: _radius,
        ),
        child: Padding(
          padding: _padding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );
  }
}
