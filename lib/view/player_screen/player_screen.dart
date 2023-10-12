import 'package:flutter/material.dart';
import 'package:musicplayer_project/model/mysongmodel.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key, required this.mysong});
  final MySongModel mysong;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down_outlined)),
      ),
    );
  }
}
