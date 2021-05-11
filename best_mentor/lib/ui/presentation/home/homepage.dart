import 'package:best_mentor/ui/style/color.dart';
import 'package:flutter/material.dart';

import 'component/build_category_widget.dart';
import 'component/build_mentor_tips_widget.dart';
import 'component/build_mentor_widger.dart';
import 'component/build_search_button_widget.dart';
import 'component/build_top_widget.dart';
import 'component/custom_bottomnav_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: CustomBottomNav(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // BUILD AVATAR, NAME, NOTIFICATION
          Expanded(
            flex: 2,
            child: BuildTop(),
          ),
          Expanded(
            flex: 10,
            child: Container(
              decoration: BoxDecoration(
                color: white12,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                      ),
                      BuildSearchButton(),
                      SizedBox(
                        height: 12,
                      ),
                      BuildCategory(),
                      SizedBox(
                        height: 30,
                      ),
                      BuildTopMentor(),
                      SizedBox(
                        height: 30,
                      ),
                      BuildMentorTips(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
