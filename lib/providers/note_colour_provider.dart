import 'package:flutter/material.dart';

/// Provider that manages note colors cycling through a predefined list
class NoteColorProvider extends ChangeNotifier {
  int _currentColorIndex = 0;

  // Color palette matching your design
  final List<Color> _colorPalette = [
    const Color(0xFFE19BE1), // Pink/Purple
    const Color(0xFFEE9B9B), // Coral/Salmon
    const Color(0xFF7FE57F), // Green
    const Color(0xFFFFEB9C), // Yellow
    const Color(0xFF9DE4E4), // Light Blue/Cyan
    const Color(0xFFC49BE1), // Lavender/Purple
  ];

  Color getNextColor() {
    final color = _colorPalette[_currentColorIndex];
    _currentColorIndex = (_currentColorIndex + 1) % _colorPalette.length;
    notifyListeners();
    return color;
  }

  Color getColorAt(int index) {
    return _colorPalette[index % _colorPalette.length];
  }
  List<Color> get allColors => List.unmodifiable(_colorPalette);
  void resetColorIndex() {
    _currentColorIndex = 0;
    notifyListeners();
  }
  Color get currentColor => _colorPalette[_currentColorIndex];
}