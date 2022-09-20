import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:helloworld/models/clubsmodel.dart';
import 'package:helloworld/service/constants.dart';
import 'package:helloworld/service/utils.dart';
import 'package:helloworld/widgets/text_widget.dart';

class ClubPage extends StatelessWidget {
  ClubPage({Key? key, required this.club}) : super(key: key);
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
              TextWidget(text: "Executives", color: Colors.white, textSize: 25),
              const Divider(
                thickness: 2,
              ),
              _executivesListTiles(
                  name: "Adam Ansah Emmanuel",
                  position: "President",
                  number: "0544251219"),
              const Divider(
                thickness: 2,
              ),
              _executivesListTiles(
                  name: "Adam Ansah Emmanuel",
                  position: "President",
                  number: "0544251219"),
              const Divider(
                thickness: 2,
              ),
              _executivesListTiles(
                  name: "Adam Ansah Emmanuel",
                  position: "President",
                  number: "0544251219"),
              const Divider(
                thickness: 2,
              ),
              _executivesListTiles(
                  name: "Adam Ansah Emmanuel",
                  position: "President",
                  number: "0544251219"),
              const SizedBox(height: 20),
              TextWidget(
                  text: "Meeting Days", color: Colors.white, textSize: 25),
              const Divider(
                thickness: 2,
              ),
              _meetingsListTiles(
                  day: "Wednesday",
                  time: "5pm",
                  location: "College Of Science"),
              const Divider(
                thickness: 2,
              ),
              _meetingsListTiles(
                  day: "Wednesday",
                  time: "5pm",
                  location: "College Of Science"),
              const Divider(
                thickness: 2,
              ),
              _meetingsListTiles(
                  day: "Wednesday",
                  time: "5pm",
                  location: "College Of Science"),
              const Divider(
                thickness: 2,
              ),
              _meetingsListTiles(
                  day: "Wednesday",
                  time: "5pm",
                  location: "College Of Science"),
              const SizedBox(height: 15),
              TextWidget(
                  text: "UpcomingEvents", color: Colors.white, textSize: 25),
              const Divider(
                thickness: 2,
              ),
              _eventListTiles(
                  title: "Mentorship Session",
                  date: "22nd September",
                  time: '2pm',
                  location: "Allotey Auditorium"),
              const Divider(
                thickness: 2,
              ),
              _eventListTiles(
                  title: "Mentorship Session",
                  date: "22nd September",
                  time: '2pm',
                  location: "Allotey Auditorium"),
              const Divider(
                thickness: 2,
              ),
              _eventListTiles(
                  title: "Mentorship Session",
                  date: "22nd September",
                  time: '2pm',
                  location: "Allotey Auditorium"),
              const Divider(
                thickness: 2,
              ),
              _eventListTiles(
                  title: "Mentorship Session",
                  date: "22nd September",
                  time: '2pm',
                  location: "Allotey Auditorium"),
              const Divider(
                thickness: 2,
              ),
              _eventListTiles(
                  title: "Mentorship Session",
                  date: "22nd September",
                  time: '2pm',
                  location: "Allotey Auditorium")
            ],
          ),
        ],
      ),
    );
  }

  Widget _eventListTiles({
    required String title,
    required String date,
    required String time,
    required String location,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.calendar)),
                TextSpan(
                  text: date,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.timeCircle)),
                TextSpan(
                  text: time,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.location)),
                TextSpan(
                  text: location,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _executivesListTiles({
    required String name,
    required String position,
    required String number,
  }) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.profile)),
                TextSpan(
                  text: position,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.call)),
                TextSpan(
                  text: number,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _meetingsListTiles({
    required String day,
    required String time,
    required String location,
  }) {
    return ListTile(
      title: Text(
        day,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.timeCircle)),
                TextSpan(
                  text: time,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(child: Icon(IconlyBold.location)),
                TextSpan(
                  text: location,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
