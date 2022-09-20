import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:helloworld/models/clubsmodel.dart';
import 'package:helloworld/screen/Club-Detail.dart';
import 'package:helloworld/service/Product_search.dart';
import 'package:helloworld/service/constants.dart';
import 'package:helloworld/service/utils.dart';
import 'package:helloworld/widgets/clubdisplaywidget.dart';
import 'package:helloworld/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImage = [
    'images/People.png',
    'images/peopleTech.png',
    'images/peopleentertainment.png',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            IconlyBold.home,
            color: kTextcolor,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              IconlyLight.search,
              color: kTextcolor,
            ),
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
          IconButton(
            icon: Icon(
              IconlyBold.user3,
              color: kTextcolor,
            ),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                  autoplay: true,
                ),
              ),
              const SizedBox(height: 10),
              TextWidget(text: "Clubs", color: Colors.black, textSize: 20),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => clubCard(
                      club: Clubs[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ClubDetail(club: Clubs[index])))),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: kDefaultPadding,
                      crossAxisSpacing: kDefaultPadding),
                  itemCount: Clubs.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
