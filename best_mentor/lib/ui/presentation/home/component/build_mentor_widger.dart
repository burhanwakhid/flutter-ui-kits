import 'package:best_mentor/helper/custom_route.dart';
import 'package:best_mentor/ui/presentation/detail_mentor/detail_mentor.dart';
import 'package:best_mentor/ui/style/box_decoration_style.dart';
import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildTopMentor extends StatelessWidget {
  const BuildTopMentor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mentor = [
      {
        'name': 'Braun Marz',
        'jobs': 'UI/UX Designer, Google',
        'reviews': 9,
        'avatar': 'assets/images/img_profile3.png'
      },
      {
        'name': 'Uden Yeager',
        'jobs': 'UI Designer, Gojek',
        'reviews': 2,
        'avatar': 'assets/images/img_profile2.png'
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Mentor',
          style: popins14TextStyle600.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        _buildListMentor(mentor)
      ],
    );
  }

  Container _buildListMentor(List mentor) {
    return Container(
      height: 199,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: mentor.length,
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 198,
            width: 160,
            decoration: index == 0
                ? boxDecoration1.copyWith(color: Color(0xffF9F9FC))
                : BoxDecoration(
                    color: lightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image.asset(
                    mentor[index]['avatar'],
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    mentor[index]['name'],
                    style: popins14TextStyle600,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    mentor[index]['jobs'],
                    style: popins12TextStyle,
                  ),
                  Text(
                    '${mentor[index]['reviews']} Reviews',
                    style: popins12TextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MyCustomRoute(
                          widget: DetailMentorPage(
                            name: mentor[index]['name'],
                            jobs: mentor[index]['jobs'],
                          ),
                        ),
                      );
                    },
                    child: Text('Hire Me'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(140, 40),
                      elevation: 0,
                      primary: kOrange,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
