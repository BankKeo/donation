import 'package:flutter/material.dart';

class OptionTextStyle {
  TextStyle optionStyle([double? size, Color? clr, FontWeight? ftWeight, TextDecoration? textDecoration]) {
    return TextStyle(
      fontSize: size,
      fontWeight: ftWeight,
      fontFamily: 'NotoSansLao',
      color: clr,
      decoration: textDecoration,
    );
  }

  TextStyle optionStyle2([double? siz, Color? clr, FontWeight? ftWeight, TextDecoration? textDecoration]) {
    return TextStyle(
      fontSize: siz,
      fontWeight: ftWeight,
      fontFamily: 'NotoSansLao',
      color: clr,
      decoration: textDecoration,
    );
  }
}
