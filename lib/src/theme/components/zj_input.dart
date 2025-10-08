import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zain/zain.dart';


class ZjInput extends StatefulWidget {
  final String? label;
  final String? hintText;
  final IconData? startIcon;
  final IconData? endIcon;
  final VoidCallback? onEndIconPressed;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const ZjInput({
    super.key,
    this.label,
    this.hintText,
    this.startIcon,
    this.endIcon,
    this.onEndIconPressed,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
  });

  @override
  State<ZjInput> createState() => _ZjInputState();
}

class _ZjInputState extends State<ZjInput> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  late final ValueNotifier<bool> _hasFocus;
  late final ValueNotifier<bool> _hasText;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _hasFocus = ValueNotifier(false);

    _controller = widget.controller ?? TextEditingController();
    _hasText = ValueNotifier(_controller.text.isNotEmpty);

    _focusNode.addListener(() => _hasFocus.value = _focusNode.hasFocus);
    _controller.addListener(() => _hasText.value = _controller.text.isNotEmpty);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    if (widget.controller == null) _controller.dispose();
    _hasFocus.dispose();
    _hasText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: TextStyle(
              color: theme.inputDecorationTheme.labelStyle?.color,
              fontSize: theme.inputDecorationTheme.labelStyle?.fontSize,
            ),
          ),
          const SizedBox(height: ZjComponentsUnits.inputTopLabelPadding),
        ],
        ValueListenableBuilder<bool>(
          valueListenable: _hasFocus,
          builder: (_, isFocused, __) {
            return ValueListenableBuilder<bool>(
              valueListenable: _hasText,
              builder: (_, hasText, __) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    color: hasText
                        ? theme.zjTheme.inputPrimaryBackgroundColor
                        : theme.zjTheme.inputEmptyBackgroundColor,
                    borderRadius: BorderRadius.circular(
                      ZjComponentsUnits.inputBorderRadius,
                    ),
                    boxShadow: isFocused
                        ? [
                      BoxShadow(
                        color: ZjColors.secondary12,
                        blurRadius: 0,
                        spreadRadius: 4,
                        offset: Offset.zero,
                      ),
                    ]
                        : [],
                  ),
                  child: TextFormField(
                    controller: _controller,
                    focusNode: _focusNode,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    obscureText: widget.obscureText,
                    validator: widget.validator,
                    inputFormatters: widget.inputFormatters,
                    style: const TextStyle(),
                    decoration: InputDecoration(
                      hintText: widget.hintText ?? "Enter something",
                      prefixIcon: widget.startIcon != null
                          ? Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: ZjComponentsUnits.inputIconHorizontalPadding,
                          top: 2,
                        ),
                        child: Icon(
                          widget.startIcon,
                          color: theme.zjTheme.inputStartIconColor,
                          size: ZjComponentsUnits.inputStartIconSize,
                        ),
                      )
                          : null,
                      suffixIcon: widget.endIcon != null
                          ? Padding(
                        padding: const EdgeInsetsDirectional.only(
                          end: ZjComponentsUnits.inputIconHorizontalPadding,
                          top: 2,
                        ),
                        child: IconButton(
                          icon: Icon(
                            widget.endIcon,
                            color: theme.zjTheme.inputEndIconColor,
                            size: ZjComponentsUnits.inputEndIconSize,
                          ),
                          onPressed: widget.onEndIconPressed,
                        ),
                      )
                          : null,
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}


/// Email Input
class ZjEmailInput extends StatelessWidget {
  final TextEditingController? controller;

  const ZjEmailInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: "Email",
      startIcon: ZjIcons.email,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: ZjValidator.email,
    );
  }
}

/// Phone Input
class ZjPhoneInput extends StatelessWidget {
  final TextEditingController? controller;

  const ZjPhoneInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: "Phone number",
      startIcon: ZjIcons.email,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      validator: ZjValidator.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, // only numbers allowed
        LengthLimitingTextInputFormatter(15), // max length
      ],
    );
  }
}

/// Password Input with toggle
// class ZjPasswordInput extends StatefulWidget {
//   final TextEditingController? controller;
//
//   const ZjPasswordInput({super.key, this.controller});
//
//   @override
//   State<ZjPasswordInput> createState() => _ZjPasswordInputState();
// }
//
// class _ZjPasswordInputState extends State<ZjPasswordInput> {
//   bool _obscureText = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return ZjInput(
//       controller: widget.controller,
//       hintText: "Password",
//       startIcon: Icons.lock,
//       obscureText: _obscureText,
//       endIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
//       onEndIconPressed: () {
//         setState(() {
//           _obscureText = !_obscureText;
//         });
//       },
//       validator: ZjValidator.password,
//     );
//   }
// }
//

class ZjPasswordInput extends StatefulWidget {
  final TextEditingController? controller;

  const ZjPasswordInput({super.key, this.controller});

  @override
  State<ZjPasswordInput> createState() => _ZjPasswordInputState();
}

class _ZjPasswordInputState extends State<ZjPasswordInput> {
  final ValueNotifier<bool> _obscureText = ValueNotifier(true);

  @override
  void dispose() {
    _obscureText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _obscureText,
      builder: (context, obscure, _) {
        return ZjInput(
          controller: widget.controller,
          textInputAction: TextInputAction.next,
          hintText: "Password",
          startIcon: Icons.lock,
          obscureText: obscure,
          endIcon: obscure ? Icons.visibility : Icons.visibility_off,
          onEndIconPressed: () => _obscureText.value = !obscure,
          validator: ZjValidator.password,
        );
      },
    );
  }
}
