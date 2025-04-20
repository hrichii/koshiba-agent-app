import 'package:flutter/material.dart';

class GlobalContext {
  static BuildContext get context => _context!;
  static BuildContext? _context;
  static void init(BuildContext context) {
    _context = context;
  }
}
