import 'package:flutter/material.dart';
import '../core/zj-colors.dart';
import '../core/zj-units.dart';
import 'zj-text.dart';

/// A zigzag separator that fills the top area and draws a stroke on the zigzag edge,
/// with optional bottom fill color.
class ZjZigzag extends StatelessWidget {
  final double zigzagHeight;
  final double zigzagWidth;
  final Color fillColor;
  final Color strokeColor;
  final double strokeWidth;
  final Color? bottomFillColor; // new

  const ZjZigzag({
    Key? key,
    this.zigzagHeight = 12,
    this.zigzagWidth = 22,
    this.fillColor = ZjColors.white,
    this.strokeColor = ZjColors.black8,
    this.strokeWidth = 1,
    this.bottomFillColor= ZjColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ZigZagFillTopPainter(
        zigzagHeight: zigzagHeight,
        zigzagWidth: zigzagWidth,
        fillColor: fillColor,
        strokeColor: strokeColor,
        strokeWidth: strokeWidth,
        bottomFillColor: bottomFillColor,
      ),
      child: SizedBox(
        height: zigzagHeight + strokeWidth,
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

  _ZigZagFillTopPainter({
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
