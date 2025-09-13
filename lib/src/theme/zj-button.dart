import 'package:flutter/material.dart';

class ZjButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData? icon;
  final Color backgroundColor;
  final Color textColor;
  final Color disabledBackgroundColor;
  final Color disabledTextColor;
  final bool isDisabled;

  const ZjButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.icon,
    this.disabledBackgroundColor = const Color(0xFFE0E0E0),
    this.disabledTextColor = const Color(0xFF9E9E9E),
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = !isDisabled && onPressed != null;

    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? backgroundColor : disabledBackgroundColor,
        foregroundColor: isEnabled ? textColor : disabledTextColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        minimumSize: const Size(0, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        textStyle: TextStyle(
          fontFamily: 'zain',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: isEnabled ? textColor : disabledTextColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 20, color: isEnabled ? textColor : disabledTextColor),
            const SizedBox(width: 8),
          ],
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isEnabled ? textColor : disabledTextColor,
            ),
          ),
        ],
      ),
    );
  }
}


class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isDisabled;

  const PrimaryButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZjButton(
      label: label,
      onPressed: onPressed,
      icon: icon,
      isDisabled: isDisabled,
      backgroundColor: const Color(0xFFAB1368), // brand color
      textColor: Colors.white,
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isDisabled;

  const SecondaryButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZjButton(
      label: label,
      onPressed: onPressed,
      icon: icon,
      isDisabled: isDisabled,
      backgroundColor: Colors.white,
      textColor: const Color(0xFF00009E), // brand primary as text
    );
  }
}
