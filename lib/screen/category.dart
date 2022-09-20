import 'package:flutter/material.dart';
import 'package:helloworld/widgets/categories_widget.dart';

import '../widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);
  List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'images/People.png',
      'catText': 'Educational',
    },
    {
      'imgPath': 'images/People.png',
      'catText': 'Religious',
    },
    {
      'imgPath': 'images/peopleentertainment.png',
      'catText': 'Entertainment',
    },
    {
      'imgPath': 'images/peopleTech.png',
      'catText': 'Tech',
    },
    {
      'imgPath': 'images/People.png',
      'catText': 'Women',
    },
    {
      'imgPath': 'images/People.png',
      'catText': 'Media',
    },
    {
      'imgPath': 'images/People.png',
      'catText': 'Sports',
    },
    {
      'imgPath': 'images/People.png',
      'catText': 'Agricultural',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: TextWidget(
          text: "Categories",
          color: Colors.black,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(8, (index) {
            return CategoriesWidget(
              catText: catInfo[index]['catText'],
              imgPath: catInfo[index]['imgPath'],
            );
          }),
        ),
      ),
    );
  }
}
