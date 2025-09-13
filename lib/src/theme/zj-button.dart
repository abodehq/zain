import 'package:flutter/material.dart';
import 'zj-colors.dart';
import 'zj-text.dart';

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
    this.label = "Button",
    required this.onPressed,
    this.backgroundColor = ZjColors.primary,
    this.textColor = ZjColors.txtPrimaryWhite,
    this.icon,
    this.disabledBackgroundColor = ZjColors.black12,
    this.disabledTextColor = ZjColors.black30,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = !isDisabled && onPressed != null;

    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        elevation:MaterialStateProperty.all(0),
        backgroundColor: isEnabled ? backgroundColor : disabledBackgroundColor,
        foregroundColor: isEnabled ? textColor : disabledTextColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        minimumSize: const Size(0, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        textStyle:ZjTextVars.txtBold14.copyWith(
          color: isEnabled ? textColor : disabledTextColor,
        ),
        // textStyle: TextStyle(
        //   fontFamily: 'zain',
        //   fontSize: 14,
        //   fontWeight: FontWeight.w700,
        //   color: isEnabled ? textColor : disabledTextColor,
        // ),
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


class ZjPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isDisabled;

  const ZjPrimaryButton({
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
      backgroundColor: ZjColors.primary, // brand color
      textColor: ZjColors.txtPrimaryWhite,
      isDisabled: isDisabled,
      disabledBackgroundColor : ZjColors.black12,
      disabledTextColor : ZjColors.black30,
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
      backgroundColor: ZjColors.secondary,
      textColor: ZjColors.txtPrimaryWhite,
      isDisabled: isDisabled,
      disabledBackgroundColor : ZjColors.black12,
      disabledTextColor : ZjColors.black30,
    );
  }
}
