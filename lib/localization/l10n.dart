import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ne'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'ne':
        return 'π³π΅';

      case 'en':
      default:
        return 'πΊπΈ';
    }
  }
}
