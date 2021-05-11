import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildCategory extends StatelessWidget {
  const BuildCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List category = [
      'UI Designer',
      'Product Designer',
      'Development',
      'UX Designer',
    ];
    return Container(
      height: 35,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Container(
            height: 35,
            decoration: BoxDecoration(
              border: index == 0 ? null : Border.all(color: lightGrey),
              color: index == 0 ? kOrange : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                category[index],
                style: popins10TextStyle.copyWith(
                  color: index == 0 ? Colors.white : darkGrey2,
                  fontWeight: index == 0 ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
