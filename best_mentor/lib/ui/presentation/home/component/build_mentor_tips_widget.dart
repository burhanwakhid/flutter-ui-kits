import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildMentorTips extends StatelessWidget {
  const BuildMentorTips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List tips = [
      'How to speak fluently with strangers',
      'How to do the right presentation activity',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mentor Tips',
          style: popins14TextStyle600.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 131,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: tips.length,
            separatorBuilder: (context, index) => SizedBox(
              width: 8,
            ),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    width: 250,
                    height: 131,
                    decoration: BoxDecoration(
                      color: Color(0xffC4C4C4),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/bnr_1.png',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 12,
                    right: 12,
                    child: Text(
                      '${tips[index]}',
                      style: popins12TextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
