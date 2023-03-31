import 'package:flutter/material.dart';

extension ShowSnackBar on BuildContext {
  void showErrorMessage(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message, style: const TextStyle(color: Colors.red)),
      backgroundColor: Colors.red,
    ));
  }
}
