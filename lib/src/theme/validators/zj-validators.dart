
class ZjValidator {
  static String? email(String? value) {
    if (value == null || value.isEmpty) return "Email is required";
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value)) return "Invalid email address";
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.isEmpty) return "Phone number is required";
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) return "Only numbers allowed";
    if (value.length < 8) return "Too short";
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return "Password is required";
    if (value.length < 6) return "At least 6 characters";
    return null;
  }
}