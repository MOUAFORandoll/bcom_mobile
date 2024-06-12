import 'package:easy_localization/easy_localization.dart';

class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$',
  );

  static isValidEmail(String? email) {
    if (email == null) return null;
    return _emailRegExp.hasMatch(email.trim()) ? null : 'invalidMail'.tr();
  }

  static isValidEmailOrNum(String? data) {
    if (data == null) return null;

    return isValidFileNum(data)
        ? null
        : _emailRegExp.hasMatch(data.trim())
            ? null
            : 'invalidMail'.tr();
  }

  static validateHeight(String value) {
    if (value.isEmpty) {
      return 'errorheight'.tr();
    }

    double? height = double.tryParse(value);
    if (height == null || height <= 0 || height > 300) {
      return 'errorheight1'.tr();
    }

    return null;
  }

  static validateWeight(String value) {
    if (value.isEmpty) {
      return 'errorweight'.tr();
    }

    double? weight = double.tryParse(value);
    if (weight == null || weight <= 0) {
      return 'errorweight1'.tr();
    }

    return null;
  }

  static validateHeight0(String value) {
    print(value);
    if (value.isEmpty) {
      return false;
    }

    double? height = double.tryParse(value);
    if (height == null || height <= 0 || height > 300) {
      return false;
    }

    return true;
  }

  static validateWeight0(String value) {
    print(value);
    if (value.isEmpty) {
      return false;
    }

    double? weight = double.tryParse(value);
    if (weight == null || weight <= 0) {
      return false;
    }

    return true;
  }

  static isDateValid(dateI) {
    DateTime currentDate = DateTime.now();
    if (dateI.length != 0) {
      if (int.parse(dateI.toString().split('/')[0]) < 31 &&
          int.parse(dateI.toString().split('/')[1]) < 13 &&
          int.parse(dateI.toString().split('/')[2]) <= currentDate.year &&
          int.parse(dateI.toString().split('/')[2]) > 1930) {
        DateTime date = DateFormat('dd/MM/yyyy').parse(dateI);

        if (date.isBefore(currentDate)) {
          return null;
        } else {
          return 'invalidDate'.tr();
        }
      } else {
        return 'invalidDate'.tr();
      }
    } else {
      return 'invalidDate'.tr();
    }
  }

  static isValidFileNum(String? data) {
    var myInt = int.tryParse(data!);

    if (myInt is int) {
      if (data.length > 7) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  static String? isValidPassword(String password) {
    if (password.length < 4) {
      return 'At least 04 characters';
    }
    return null;
  }

  static String? isValidUsername(String username) {
    return username.length >= 2 ? null : 'minUsername'.tr();
  }

  static String? isValidUsernameNoRe(
    String username,
  ) {
    return username.length == 0
        ? null
        : username.length >= 2
            ? null
            : 'At least 03 characters';
  }

  static String? usPhoneValid(String input) {
    final RegExp phone =
        RegExp(r'^(\+0?1\s)?((\d{3})|(\(\d{3}\)))?(\s|-)\d{3}(\s|-)\d{4}$');
    if (phone.hasMatch(input)) {
      return null;
    } else {
      return 'invalidPhone'.tr();
    }
  }

  static String? required(String field, String? value) {
    if (value == null) return null;
    return value.isEmpty ? '$field Obligatoire' : null;
  }

  static String? isValidDate(String? inputDate) {
    final RegExp date = RegExp(r'/^\d{2}\/\d{2}\/\d{4}$/');

    if (date.hasMatch(inputDate!) == false) {
      return 'invalidDate'.tr();
    }
    return null;
  }
}
