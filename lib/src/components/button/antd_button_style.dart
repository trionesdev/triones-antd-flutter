import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class AntdButtonStyle with Diagnosticable {
  final WidgetStateProperty<TextStyle?>? textStyle;
  final WidgetStateProperty<Color?>? backgroundColor;
  final WidgetStateProperty<OutlinedBorder?>? shape;

  const AntdButtonStyle({this.textStyle, this.backgroundColor, this.shape});

  ButtonStyle toButtonStyle() {
    return ButtonStyle(
        backgroundColor: backgroundColor,
        shape: shape ??
            WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Color(0xFFd9d9d9),width: 0.5))));

  }

  AntdButtonStyle copyWith(
      {WidgetStateProperty<TextStyle?>? textStyle,
      WidgetStateProperty<Color?>? backgroundColor,
      WidgetStateProperty<OutlinedBorder?>? shape}) {
    return AntdButtonStyle(
        textStyle: textStyle ?? this.textStyle,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        shape: shape ?? this.shape);
  }

  AntdButtonStyle merge(AntdButtonStyle? style) {
    if (style == null) {
      return this;
    }
    return copyWith(
        textStyle: textStyle ?? style.textStyle,
        backgroundColor: backgroundColor ?? style.backgroundColor,
        shape: shape ?? style.shape);
  }
}
