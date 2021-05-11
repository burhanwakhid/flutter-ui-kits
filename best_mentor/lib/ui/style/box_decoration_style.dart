import 'package:best_mentor/ui/style/color.dart';
import 'package:flutter/rendering.dart';

var boxDecoration1 = BoxDecoration(
  color: lightGrey,
  borderRadius: BorderRadius.all(Radius.circular(12)),
  boxShadow: [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.25),
      offset: Offset(0, 4),
      blurRadius: 4,
    )
  ],
);
