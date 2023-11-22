import 'package:flutter/material.dart';
import 'package:musicplayer_project/utils/constants/text_styles.dart';
import 'package:musicplayer_project/view/settings/screens/privacy_policy.dart';
import 'package:musicplayer_project/view/settings/screens/terms_and_conditions.dart';
import 'package:musicplayer_project/view/splash_screen/splash_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Adjust speed",
                style: myfontNormal(),
              ),
            ),
            Slider(
                allowedInteraction: SliderInteraction.slideOnly,
                value: speedvalue,
                min: 0.0,
                max: 4.0,
                onChanged: (double value) {
                  speedvalue = value;
                  if (value == 0) {
                    player.setSpeed(1);
                  } else if (value >= .5) {
                    player.setSpeed(1.2);
                  }
                  if (value >= 1) {
                    player.setSpeed(1.5);
                  }
                  if (value >= 1.5) {
                    player.setSpeed(1.7);
                  }
                  if (value >= 2) {
                    player.setSpeed(2);
                  }
                  if (value >= 2.5) {
                    player.setSpeed(2.2);
                  }
                  if (value >= 3) {
                    player.setSpeed(2.5);
                  }
                  setState(() {});
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Adjust Volume",
                style: myfontNormal(),
              ),
            ),
            Slider(
              allowedInteraction: SliderInteraction.slideOnly,
              value: volumevalue,
              min: 1.0,
              max: 10.0,
              onChanged: (double value) {
                volumevalue = value;

                double volumeLevel;
                if (value >= 1.0 && value < 2) {
                  volumeLevel = 0.0;
                } else if (value >= 2 && value < 3.0) {
                  volumeLevel = 0.1;
                } else if (value >= 3.0 && value < 4.0) {
                  volumeLevel = 0.3;
                } else if (value >= 4.0 && value < 6.0) {
                  volumeLevel = 0.5;
                } else if (value >= 6.0 && value < 8.0) {
                  volumeLevel = 0.7;
                } else if (value >= 8 && value < 9.0) {
                  volumeLevel = 0.85;
                } else {
                  volumeLevel = 1.0;
                }

                player.setVolume(volumeLevel);
                setState(() {});
              },
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy()));
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Privacy policy",
                    style: myfontNormal(),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TermsAndConditions()));
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Terms and conditions",
                    style: myfontNormal(),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

double speedvalue = 0.0;
double volumevalue = 10.0;
