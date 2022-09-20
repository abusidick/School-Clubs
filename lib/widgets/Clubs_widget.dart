import 'package:flutter/material.dart';
import 'package:helloworld/models/clubsmodel.dart';
import 'package:helloworld/service/constants.dart';

class JoinedClubs extends StatelessWidget {
  const JoinedClubs({Key? key, required this.club, required this.press})
      : super(key: key);
  final Club club;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // height: size.width * 0.4,
              // width: size.width * 0.45,
              decoration: BoxDecoration(
                  color: club.color.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                club.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              club.title,
              style: TextStyle(
                  color: kTextcolor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              club.category,
              style: TextStyle(color: kTextcolor, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
