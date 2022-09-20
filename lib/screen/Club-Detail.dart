import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:helloworld/models/clubsmodel.dart';
import 'package:helloworld/screen/clubs.dart';
import 'package:helloworld/service/constants.dart';

import 'package:helloworld/widgets/clubDetails.dart';

class ClubDetail extends StatelessWidget {
  const ClubDetail({Key? key, required this.club}) : super(key: key);
  final Club club;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: club.color,
      appBar: AppBar(
          backgroundColor: club.color,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              IconlyLight.arrowLeft,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ClubsScreen()));
                },
                icon: Icon(
                  IconlyLight.user3,
                  color: Colors.white,
                )),
            SizedBox(width: kDefaultPadding / 2)
          ]),
      body: ClubDetails(club: club),
    );
  }
}
