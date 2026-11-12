import 'package:flutter/material.dart';

class RadiiModel extends ChangeNotifier {
  double _topLeft = 0;
  double _topRight = 0;
  double _bottomLeft = 0;
  double _bottomRight = 0;

  double get topLeft => _topLeft;
  double get topRight => _topRight;
  double get bottomLeft => _bottomLeft;
  double get bottomRight => _bottomRight;

  void setTopLeft(double value) {
    _topLeft = value;
    notifyListeners();
  }

  void setTopRight(double value) {
    _topRight = value;
    notifyListeners();
  }

  void setBottomLeft(double value) {
    _bottomLeft = value;
    notifyListeners();
  }

  void setBottomRight(double value) {
    _bottomRight = value;
    notifyListeners();
  }

  BorderRadius get borderRadius => BorderRadius.only(
    topLeft: Radius.circular(_topLeft),
    topRight: Radius.circular(_topRight),
    bottomLeft: Radius.circular(_bottomLeft),
    bottomRight: Radius.circular(_bottomRight),
  );
}