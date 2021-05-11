import 'package:best_mentor/ui/style/box_decoration_style.dart';
import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildSearchButton extends StatelessWidget {
  const BuildSearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 245,
          height: 50,
          decoration: boxDecoration1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 15,
                  bottom: 10,
                  top: 0,
                  right: 15,
                ),
                border: InputBorder.none,
                hintText: 'Find your favorite mentor',
                hintStyle: popins14TextStyle.copyWith(color: darkGrey),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: kOrange,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Center(
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
