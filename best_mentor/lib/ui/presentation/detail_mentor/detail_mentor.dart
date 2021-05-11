import 'package:best_mentor/ui/style/color.dart';
import 'package:flutter/material.dart';

import 'component/build_experience_widget.dart';
import 'component/build_profile_widget.dart';

class DetailMentorPage extends StatelessWidget {
  final String? name;
  final String? jobs;

  const DetailMentorPage({
    Key? key,
    @required this.name,
    @required this.jobs,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            children: [
              BuildProfileDetail(name: name, jobs: jobs),
              SizedBox(
                height: 30,
              ),
              BuildExperience()
            ],
          ),
        ),
      ),
    );
  }
}
