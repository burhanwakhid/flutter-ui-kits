import 'package:best_mentor/ui/style/color.dart';
import 'package:best_mentor/ui/style/text_style.dart';
import 'package:flutter/material.dart';

class BuildExperience extends StatelessWidget {
  const BuildExperience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTab(),
          SizedBox(
            height: 20,
          ),
          _buildExperience(context)
        ],
      ),
    );
  }

  Expanded _buildExperience(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experience',
                  style: popins14TextStyle600.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                _buildItemExperience(
                  icon: 'assets/icons/ic_google.png',
                  title: 'Google',
                  desc: 'UI/UX Lead',
                  month: '3 Months',
                ),
                SizedBox(
                  height: 16,
                ),
                _buildItemExperience(
                  icon: 'assets/icons/ic_gojek.png',
                  title: 'Gojek Indonesia',
                  desc: 'Product Designer',
                  month: '4 Years',
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'My Portofolio',
                  style: popins14TextStyle600.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 16,
                ),
                _buildListPortfolio(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildListPortfolio(BuildContext context) {
    return Container(
      height: 135,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        separatorBuilder: (context, i) => SizedBox(
          width: 8,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 135,
            width: 135,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/bnr_2.png',
            ),
          );
        },
      ),
    );
  }

  Row _buildItemExperience({
    String? icon,
    String? title,
    String? desc,
    String? month,
  }) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: lightGrey),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Image.asset(
            '$icon',
            width: 30,
            height: 30,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title',
              style: popins12TextStyle.copyWith(
                fontWeight: FontWeight.w300,
                color: darkGrey,
              ),
            ),
            Text(
              '$desc',
              style: popins14TextStyle600.copyWith(
                color: Color(0xff312651),
              ),
            )
          ],
        ),
        Spacer(),
        Text(
          '$month',
          style: popins12TextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: darkGrey,
          ),
        )
      ],
    );
  }

  Row _buildTab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'My Experience(2)',
                style: popins14TextStyle600.copyWith(
                  fontSize: 16,
                  color: kMainColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            )
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'My Reviews(9)',
            style: popins14TextStyle600.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: darkGrey,
            ),
          ),
        ),
      ],
    );
  }
}
