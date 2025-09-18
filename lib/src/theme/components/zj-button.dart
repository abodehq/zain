import 'package:flutter/material.dart';
import './core/zj-colors.dart';
import './core/zj-units.dart';
import './components/zj-text.dart';


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
        shadowColor: Colors.transparent,
        elevation: 0.0,
        backgroundColor: isEnabled ? backgroundColor : disabledBackgroundColor,
        foregroundColor: isEnabled ? textColor : disabledTextColor,
        padding: const EdgeInsets.symmetric(horizontal: ZjUnits.unit24, vertical: ZjUnits.unit10),
        minimumSize: const Size(ZjUnits.unit0, ZjUnits.unit40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ZjUnits.rxl),
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
            Icon(icon, size: ZjUnits.unit18, color: isEnabled ? textColor : disabledTextColor),
            const SizedBox(width: ZjUnits.unit4),
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

class ZjSecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isDisabled;

  const ZjSecondaryButton({
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
