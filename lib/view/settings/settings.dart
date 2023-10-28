import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/settings/screens/privacy_policy.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                },
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "Speed adjust",
                    style: myfontNormal(),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                },
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "Privacy policy",
                    style: myfontNormal(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
