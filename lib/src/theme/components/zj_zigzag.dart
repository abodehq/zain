import 'package:flutter/material.dart';
import 'package:zain/zain.dart';

/// A zigzag separator that fills the top area and draws a stroke on the zigzag edge,
/// with optional bottom fill color.
class ZjZigzag extends StatelessWidget {
  final double? zigzagHeight;
  final double? zigzagWidth;
  final Color? fillColor;
  final Color? strokeColor;
  final double? strokeWidth;
  final Color? bottomFillColor; // new

  const ZjZigzag({
    super.key,
    this.zigzagHeight ,
    this.zigzagWidth ,
    this.fillColor ,
    this.strokeColor ,
    this.strokeWidth ,
    this.bottomFillColor,
  }) ;

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context).zjTheme.zigzagTheme;
    final double height = zigzagHeight ?? theme.zigzagHeight;
    final double width = zigzagWidth ?? theme.zigzagWidth;
    final Color fill = fillColor ?? theme.fillColor;
    final Color stroke = strokeColor ?? theme.strokeColor;
    final double strokeW = strokeWidth ?? theme.strokeWidth;
    final Color? bottomFill = bottomFillColor ?? theme.bottomFillColor;
    return CustomPaint(
      painter: _ZigZagFillTopPainter(
        zigzagHeight: height,
        zigzagWidth: width,
        fillColor: fill,
        strokeColor: stroke,
        strokeWidth: strokeW,
        bottomFillColor: bottomFill,
      ),
      child: SizedBox(
        height: height ,
        width: double.infinity,
      ),
    );
  }
}

class _ZigZagFillTopPainter extends CustomPainter {
  final double zigzagHeight;
  final double zigzagWidth;
  final Color fillColor;
  final Color strokeColor;
  final double strokeWidth;
  final Color? bottomFillColor;

 const _ZigZagFillTopPainter({
    required this.zigzagHeight,
    required this.zigzagWidth,
    required this.fillColor,
    required this.strokeColor,
    required this.strokeWidth,
    this.bottomFillColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Fill bottom if provided
    if (bottomFillColor != null) {
      final bottomPaint = Paint()
        ..color = bottomFillColor!
        ..style = PaintingStyle.fill;
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), bottomPaint);
    }

    final fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    final strokePaint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final path = Path();

    // Start bottom-left
    path.moveTo(0, size.height);

    // Zigzag pattern
    final steps = (size.width / zigzagWidth).ceil();
    for (int i = 0; i < steps; i++) {
      final x = i * zigzagWidth;
      path.lineTo(x + zigzagWidth / 2, size.height - zigzagHeight);
      path.lineTo(x + zigzagWidth, size.height);
    }

    // Close polygon to top
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    // Fill shape
    canvas.drawPath(path, fillPaint);

    // Draw stroke only along zigzag edge (bottom)
    final strokePath = Path()..moveTo(0, size.height);
    for (int i = 0; i < steps; i++) {
      final x = i * zigzagWidth;
      strokePath.lineTo(x + zigzagWidth / 2, size.height - zigzagHeight);
      strokePath.lineTo(x + zigzagWidth, size.height);
    }
    canvas.drawPath(strokePath, strokePaint);
  }

  @override
  bool shouldRepaint(covariant _ZigZagFillTopPainter oldDelegate) {
    return zigzagHeight != oldDelegate.zigzagHeight ||
        zigzagWidth != oldDelegate.zigzagWidth ||
        fillColor != oldDelegate.fillColor ||
        strokeColor != oldDelegate.strokeColor ||
        strokeWidth != oldDelegate.strokeWidth ||
        bottomFillColor != oldDelegate.bottomFillColor;
  }
}
