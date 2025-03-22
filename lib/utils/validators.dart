import 'package:ui_app/utils/path_provider.dart';

String? validation(
    Validator validate, String value, String fieldName, int min, int max) {
  if (value.trim().isEmpty) {
    return "$fieldName cannot be empty";
  }

  switch (validate) {
    case Validator.email:
      final emailRegex =
          RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
      if (!emailRegex.hasMatch(value)) {
        return "Enter a valid email address";
      }
      return null;

    case Validator.password:
      if (value.length < min) {
        return "Password must be at least $min characters long";
      }
      if (!RegExp(r'[A-Z]').hasMatch(value)) {
        return "Password must contain at least one uppercase letter";
      }
      if (!RegExp(r'[a-z]').hasMatch(value)) {
        return "Password must contain at least one lowercase letter";
      }
      if (!RegExp(r'[0-9]').hasMatch(value)) {
        return "Password must contain at least one digit";
      }
      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
        return "Password must contain at least one special character";
      }
      return null;

    case Validator.name:
      if (value.length < min) {
        return "$fieldName must be at least $min characters long";
      }
      if (value.length > max) {
        return "$fieldName cannot exceed $max characters";
      }
      if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
        return "$fieldName should only contain letters and spaces";
      }
      return null;

    case Validator.phoneNumber:
      final number = int.tryParse(value);
      if (number == null) {
        return "Enter a valid phone number";
      }
      if (value.length < min || value.length > max) {
        return "Phone number must be between $min and $max digits";
      }
      return null;

    case Validator.age:
      final age = int.tryParse(value);
      if (age == null || age < min || age > max) {
        return "Age must be between $min and $max";
      }
      return null;

    case Validator.dob:
      try {
        DateTime dob = DateTime.parse(value);
        DateTime today = DateTime.now();
        int age = today.year - dob.year;
        if (today.month < dob.month ||
            (today.month == dob.month && today.day < dob.day)) {
          age--;
        }
        if (age < min || age > max) {
          return "Age should be between $min and $max years";
        }
      } catch (e) {
        return "Enter a valid date in YYYY-MM-DD format";
      }
      return null;
  }
}
