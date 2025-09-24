import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zain/zain.dart';




/// Base Input Component
class ZjInput extends StatelessWidget {
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
    this.hintText,
    this.startIcon,
    this.endIcon,
    this.onEndIconPressed,
    this.obscureText = false,
    this.textInputAction =TextInputAction.next,
    this.controller,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: startIcon != null
            ? Icon(startIcon,size: 24.0)
            : null,
        suffixIcon: endIcon != null
            ? IconButton(
          icon: Icon(endIcon,size: 18.0),
          onPressed: onEndIconPressed,
        )
            : null,
      ),
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
      startIcon: Icons.email,
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
        LengthLimitingTextInputFormatter(15),   // max length
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
