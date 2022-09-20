import 'package:flutter/material.dart';
import 'package:helloworld/widgets/text_widget.dart';

class ClubDescription extends StatelessWidget {
  const ClubDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            TextWidget(
              text: 'WISE',
              color: Colors.black,
              textSize: 18,
              isTitle: true,
            ),
            const SizedBox(height: 1),
            TextWidget(text: 'Women', color: Colors.black, textSize: 16)
          ],
        ),
      ),
    );
  }
}
