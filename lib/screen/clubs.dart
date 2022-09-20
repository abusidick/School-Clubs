import 'package:flutter/material.dart';
import 'package:helloworld/models/clubsmodel.dart';
import 'package:helloworld/screen/Clubspage.dart';
import 'package:helloworld/service/constants.dart';
import 'package:helloworld/widgets/Clubs_widget.dart';
import 'package:helloworld/widgets/text_widget.dart';

class ClubsScreen extends StatelessWidget {
  const ClubsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: TextWidget(
          text: "Clubs",
          color: Colors.black,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          itemBuilder: (context, index) => JoinedClubs(
              club: ClubsJoined[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ClubsPage(club: ClubsJoined[index])))),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding),
          itemCount: ClubsJoined.length,
        ),
      ),
    );
  }
}
