import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildProfileDetail extends StatelessWidget {
  const BuildProfileDetail({
    Key? key,
    required this.name,
    required this.jobs,
  }) : super(key: key);

  final String? name;
  final String? jobs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 215,
          decoration: BoxDecoration(
            color: white12,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 62,
              ),
              Text(
                this.name!,
                style: popins14TextStyle600.copyWith(fontSize: 16),
              ),
              Text(
                this.jobs!,
                style: popins14TextStyle.copyWith(color: darkGrey),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildItemSosmed('assets/icons/ic_dribble.png'),
                  SizedBox(
                    width: 20,
                  ),
                  _buildItemSosmed('assets/icons/ic_linkedin.png'),
                  SizedBox(
                    width: 20,
                  ),
                  _buildItemSosmed('assets/icons/ic_twitter.png'),
                  SizedBox(
                    width: 20,
                  ),
                  _buildItemSosmed('assets/icons/ic_youtube.png'),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -50,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/img_profile4.png',
              width: 100,
              height: 100,
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(140, 40),
                      elevation: 0,
                      primary: kOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {},
                    child: Text('Hire Me'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container _buildItemSosmed(String? image) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: kMainColor,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Image.asset(
          '$image',
        ),
      ),
    );
  }
}
