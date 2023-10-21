import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';

class ButtonSquareCard extends StatelessWidget {
  const ButtonSquareCard({super.key, required this.title, this.image});

  final String title;
  final AssetImage? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber,
          child: image != null ? Image(image: image!) : null,
          height: MediaQuery.of(context).size.width / 2.5,
          width: MediaQuery.of(context).size.width / 2.5,
        ),
        Text(
          title,
          style: myfontBold(),
        )
      ],
    );
  }
}
