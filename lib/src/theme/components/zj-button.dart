import 'package:flutter/material.dart';
import 'package:zain/zain.dart';


class ZjButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? disabledBackgroundColor;
  final Color? disabledTextColor;
  final bool isDisabled;

  const ZjButton({
    Key? key,
    this.label = "Button",
    required this.onPressed,
    required this.backgroundColor ,
    this.textColor ,
    this.icon,
    this.disabledBackgroundColor,
    this.disabledTextColor ,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = !isDisabled && onPressed != null;
    final theme = Theme.of(context).zjTheme;
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
            // If a background color is passed, always use it
            if (backgroundColor != null) return backgroundColor!;

            // Otherwise, fallback to state-based color
            if (states.contains(WidgetState.disabled)) {
              return theme.buttonDisableBackgroundColor; // disabled color
            }
            return ZjLightColors.buttonPrimaryBackgroundColor; // default enabled color
          },
        ),
        //foregroundColor: MaterialStateProperty.all(Colors.white), // text/icon color
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
    final theme = Theme.of(context).zjTheme;
    return ZjButton(
      label: label,
      onPressed: onPressed,
      backgroundColor: theme.buttonPrimaryBackgroundColor,
      icon: icon,
      textColor: ZjLightColors.buttonText,
      isDisabled: isDisabled
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
    final theme = Theme.of(context).zjTheme;
print(theme.buttonSecondaryBackgroundColor);
    return ZjButton(
      label: label,
      onPressed: onPressed,
      icon: icon,
      backgroundColor: theme.buttonSecondaryBackgroundColor,
      textColor: ZjLightColors.buttonText,
      isDisabled: isDisabled,
      disabledBackgroundColor : ZjColors.black12,
      disabledTextColor : ZjColors.black30,
    );
  }
}
