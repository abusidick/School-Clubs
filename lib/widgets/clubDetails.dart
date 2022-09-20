import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/models/clubsmodel.dart';
import 'package:helloworld/screen/clubs.dart';
import 'package:helloworld/service/constants.dart';
import 'package:helloworld/service/utils.dart';
import 'package:helloworld/widgets/text_widget.dart';

class ClubDetails extends StatelessWidget {
  ClubDetails({Key? key, required this.club}) : super(key: key);
  final Club club;

  final List<String> _offerImage = [
    'images/People.png',
    'images/peopleTech.png',
    'images/peopleentertainment.png',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextWidget(
                  text: club.title,
                  color: Colors.white,
                  textSize: 25,
                  isTitle: true,
                ),
                TextWidget(
                    text: club.category, color: kTextcolor, textSize: 20),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.33,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  _offerImage[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount: _offerImage.length,
              pagination: const SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: const DotSwiperPaginationBuilder(
                      color: Colors.white, activeColor: Color(0xffB7DFF5))),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child: Text(
                  club.description,
                  style: TextStyle(height: 1.5, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 40,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClubsScreen(),
                        ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: Colors.white,
                  child: TextWidget(
                    text: "Join Club".toUpperCase(),
                    color: Colors.black,
                    textSize: 17,
                    isTitle: true,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
