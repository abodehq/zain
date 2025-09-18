import 'package:flutter/material.dart';
import '../core/zj-colors.dart';
import '../core/zj-units.dart';
import 'zj-text.dart';


import 'package:flutter/material.dart';

class ZjInput extends StatelessWidget {
  final String? hintText;
  final IconData? startIcon;
  final IconData? endIcon;
  final VoidCallback? onEndIconPressed;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const ZjInput({
    super.key,
    this.hintText,
    this.startIcon,
    this.endIcon,
    this.onEndIconPressed,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: startIcon != null
            ? Icon(startIcon, size: 24, color: Colors.black)
            : null,
        suffixIcon: endIcon != null
            ? IconButton(
          icon: Icon(endIcon, size: 18, color: Colors.black),
          onPressed: onEndIconPressed,
        )
            : null,
        filled: true,
        fillColor: const Color.fromRGBO(35, 174, 183, 0.02),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.08),
          ),
        ),
      ),
      style: const TextStyle(
        fontFamily: "Zain_K_Q",
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(0, 0, 0, 0.70),
      ),
    );
  }
}



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
      validator: ZjValidators.email,
    );
  }
}

class ZjPhoneInput extends StatelessWidget {
  final TextEditingController? controller;

  const ZjPhoneInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: controller,
      hintText: "Phone number",
      startIcon: Icons.phone,
      keyboardType: TextInputType.phone,
      validator: ZjValidators.phone,
    );
  }
}


class ZjPasswordInput extends StatefulWidget {
  final TextEditingController? controller;

  const ZjPasswordInput({super.key, this.controller});

  @override
  State<ZjPasswordInput> createState() => _ZjPasswordInputState();
}

class _ZjPasswordInputState extends State<ZjPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return ZjInput(
      controller: widget.controller,
      hintText: "Password",
      startIcon: Icons.lock,
      obscureText: _obscureText,
      endIcon: _obscureText ? Icons.visibility : Icons.visibility_off,
      onEndIconPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      validator: ZjValidators.password,
    );
  }
}
