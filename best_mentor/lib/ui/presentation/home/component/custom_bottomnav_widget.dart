import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: kMainColor,
                    ),
                    Text(
                      'Home',
                      style: popins14TextStyle.copyWith(
                          color: kMainColor, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.bookmark,
              color: darkGrey2,
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.chat,
              color: darkGrey2,
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.account_circle,
              color: darkGrey2,
            ),
          ],
        ),
      ),
    );
  }
}
