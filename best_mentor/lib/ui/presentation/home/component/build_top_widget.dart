import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildTop extends StatelessWidget {
  const BuildTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                _buildAvatar(),
                SizedBox(
                  width: 12,
                ),
                _buildName(),
                Spacer(),
                _buildIcon()
              ],
            ),
          ),
        ),
      ],
    );
  }

  Icon _buildIcon() {
    return Icon(
      Icons.notifications,
      color: Colors.white,
    );
  }

  Column _buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Morning,',
          style: popins12TextStyle.copyWith(color: darkGrey2),
        ),
        Text(
          'Bimo Semesta',
          style: popins14TextStyle600.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Image _buildAvatar() {
    return Image.asset(
      'assets/images/img_profile1.png',
      fit: BoxFit.fitWidth,
      width: 54,
      height: 54,
    );
  }
}
