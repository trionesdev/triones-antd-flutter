import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'style_element.dart';

@immutable
class Style with Diagnosticable {
  const Style({
    this.height,
    this.width,
    this.color,
    this.fontSize,
    // background
    this.backgroundColor,
    this.backgroundImage,
    // padding
    this.padding,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    // border
    this.border,
    this.borderColor,
    this.borderWidth,
    this.borderStyle,
    this.borderRadius,
    // border bottom
    this.borderBottom,
    this.borderBottomColor,
    this.borderBottomWidth,
    this.borderBottomStyle,
    this.borderBottomLeftRadius,
    this.borderBottomRightRadius,
    // border top
    this.borderTop,
    this.borderTopColor,
    this.borderTopWidth,
    this.borderTopStyle,
    this.borderTopLeftRadius,
    this.borderTopRightRadius,
    // border left
    this.borderLeft,
    this.borderLeftColor,
    this.borderLeftWidth,
    this.borderLeftStyle,
    // border right
    this.borderRight,
    this.borderRightColor,
    this.borderRightWidth,
    this.borderRightStyle,
  });

  final Color? color;
  final double? fontSize;
  final double? height;
  final double? width;

  // background
  final Color? backgroundColor;
  final Color? backgroundImage;

  // padding
  final StylePadding? padding;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;

  // border
  final StyleBorder? border;
  final Color? borderColor;
  final double? borderWidth;
  final BorderStyle? borderStyle;
  final double? borderRadius;

  // border bottom
  final StyleBorder? borderBottom;
  final Color? borderBottomColor;
  final double? borderBottomWidth;
  final BorderStyle? borderBottomStyle;
  final double? borderBottomLeftRadius;
  final double? borderBottomRightRadius;

  // border top
  final StyleBorder? borderTop;
  final Color? borderTopColor;
  final double? borderTopWidth;
  final BorderStyle? borderTopStyle;
  final double? borderTopLeftRadius;
  final double? borderTopRightRadius;

  // border left
  final StyleBorder? borderLeft;
  final Color? borderLeftColor;
  final double? borderLeftWidth;
  final BorderStyle? borderLeftStyle;

  // border right
  final StyleBorder? borderRight;
  final Color? borderRightColor;
  final double? borderRightWidth;
  final BorderStyle? borderRightStyle;

  Style merge<T extends Style>(T? source) {
    if (source == null) {
      return this;
    }
    Style mergedStyle = Style(
      color: source.color ?? color,
      fontSize: source.fontSize ?? fontSize,
      height: source.height ?? height,
      width: source.width ?? width,
      backgroundColor: source.backgroundColor ?? backgroundColor,
      backgroundImage: source.backgroundImage ?? backgroundImage,
      //padding
      padding: source.padding ?? padding,
      paddingTop: source.paddingTop ?? paddingTop,
      paddingBottom: source.paddingBottom ?? paddingBottom,
      paddingLeft: source.paddingLeft ?? paddingLeft,
      paddingRight: source.paddingRight ?? paddingRight,
      //border
      border: source.border ?? border,
      borderColor: source.borderColor ?? borderColor,
      borderWidth: source.borderWidth ?? borderWidth,
      borderStyle: source.borderStyle ?? borderStyle,
      borderRadius: source.borderRadius ?? borderRadius,
      // border bottom
      borderBottom: source.borderBottom ?? borderBottom,
      borderBottomColor: source.borderBottomColor ?? borderBottomColor,
      borderBottomWidth: source.borderBottomWidth ?? borderBottomWidth,
      borderBottomStyle: source.borderBottomStyle ?? borderBottomStyle,
      borderBottomLeftRadius:
          source.borderBottomLeftRadius ?? borderBottomLeftRadius,
      borderBottomRightRadius:
          source.borderBottomRightRadius ?? borderBottomRightRadius,
      // border top
      borderTop: source.borderTop ?? borderTop,
      borderTopColor: source.borderTopColor ?? borderTopColor,
      borderTopWidth: source.borderTopWidth ?? borderTopWidth,
      borderTopStyle: source.borderTopStyle ?? borderTopStyle,
      borderTopLeftRadius: source.borderTopLeftRadius ?? borderTopLeftRadius,
      borderTopRightRadius: source.borderTopRightRadius ?? borderTopRightRadius,
      // border left
      borderLeft: source.borderLeft ?? borderLeft,
      borderLeftColor: source.borderLeftColor ?? borderLeftColor,
      borderLeftWidth: source.borderLeftWidth ?? borderLeftWidth,
      borderLeftStyle: source.borderLeftStyle ?? borderLeftStyle,
      // border right
      borderRight: source.borderRight ?? borderRight,
      borderRightColor: source.borderRightColor ?? borderRightColor,
      borderRightWidth: source.borderRightWidth ?? borderRightWidth,
      borderRightStyle: source.borderRightStyle ?? borderRightStyle,
    );
    return mergedStyle;
  }



  BorderRadius get computedBorderRadius {
    return BorderRadius.only(
      topLeft: Radius.circular(borderTopLeftRadius ?? borderRadius ?? 0),
      topRight: Radius.circular(borderTopRightRadius ?? borderRadius ?? 0),
      bottomLeft: Radius.circular(borderBottomLeftRadius ?? borderRadius ?? 0),
      bottomRight:
          Radius.circular(borderBottomRightRadius ?? borderRadius ?? 0),
    );
  }



  BoxDecoration get decoration {
    return BoxDecoration(
        color: backgroundColor,
        border: Border(
            bottom: BorderSide(
              color: borderBottomColor ??
                  borderBottom?.color ??
                  borderColor ??
                  border?.color ??
                  Colors.transparent,
              width: borderBottomWidth ??
                  borderBottom?.width ??
                  borderWidth ??
                  border?.width ??
                  0,
              style: borderBottomStyle ??
                  borderBottom?.style ??
                  borderStyle ??
                  border?.style ??
                  BorderStyle.none,
            ),
            top: BorderSide(
              color: borderTopColor ??
                  borderTop?.color ??
                  borderColor ??
                  border?.color ??
                  Colors.transparent,
              width: borderTopWidth ??
                  borderTop?.width ??
                  borderWidth ??
                  border?.width ??
                  0,
              style: borderTopStyle ??
                  borderTop?.style ??
                  borderStyle ??
                  border?.style ??
                  BorderStyle.none,
            ),
            left: BorderSide(
              color: borderLeftColor ??
                  borderLeft?.color ??
                  borderColor ??
                  border?.color ??
                  Colors.transparent,
              width: borderLeftWidth ??
                  borderLeft?.width ??
                  borderWidth ??
                  border?.width ??
                  0,
              style: borderLeftStyle ??
                  borderLeft?.style ??
                  borderStyle ??
                  border?.style ??
                  BorderStyle.none,
            ),
            right: BorderSide(
              color: borderRightColor ??
                  borderRight?.color ??
                  borderColor ??
                  border?.color ??
                  Colors.transparent,
              width: borderRightWidth ??
                  borderRight?.width ??
                  borderWidth ??
                  border?.width ??
                  0,
              style: borderRightStyle ??
                  borderRight?.style ??
                  borderStyle ??
                  border?.style ??
                  BorderStyle.none,
            )),
        borderRadius: computedBorderRadius);
  }

  EdgeInsetsGeometry get computedPadding {
    double top = paddingTop ?? padding?.top ?? 0;
    double bottom = paddingBottom ?? padding?.bottom ?? 0;
    double left = paddingBottom ?? padding?.left ?? 0;
    double right = paddingBottom ?? padding?.right ?? 0;
    return EdgeInsets.only(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
    );
  }
}
