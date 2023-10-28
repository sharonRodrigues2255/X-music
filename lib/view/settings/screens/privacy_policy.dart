import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy & Policy"),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Privacy Policy for X Music\n\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // Decrease font size for headings
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'This Privacy Policy explains how X Music ("we," "us," or "our") collects, uses, and protects your personal information when you use our offline mobile application ("App"). The App does not require an internet connection for its core functionalities.\n\n',
                      style: TextStyle(
                        fontSize: 12, // Decrease font size for body text
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Information We Collect\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'The App may collect and process the following types of information:\n\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'User-Provided Information:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- Registration Information: When you create an account within the App, we may collect your username, email address, and other registration details.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- User-Generated Content: This may include playlists, favorites, and user-generated data within the App.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- Support and Feedback: Information you provide when you contact us for support or feedback.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nAutomatically Collected Information:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- Device Information: We may collect information about your mobile device, such as device model, operating system, and unique device identifiers.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- Usage Data: We collect data related to your interactions with the App, including the songs you play, playlists you create, and your preferences.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nHow We Use Your Information:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- App Functionality: To provide, maintain, and improve the App.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- Personalization: To enhance your user experience, suggest songs, and offer tailored content.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- User Support: To respond to your inquiries and provide customer support.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- Communications: To send you important updates, notifications, and promotional content within the App.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nData Sharing:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We do not sell, trade, or rent your personal information to third parties. The data collected is solely used for the operation of the App and will not be shared externally.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nSecurity:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We take reasonable measures to protect your information from unauthorized access, disclosure, alteration, or destruction. While the App does not require an internet connection, your data stored on your device is safeguarded.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nYour Choices:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'You can manage your information through the App\'s settings, including your preferences for notifications and personalized content. If you have questions or need assistance, please contact us at [sr979151@gmail.com].\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nChildren\'s Privacy:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'The App is not intended for use by children under the age of 13. We do not knowingly collect or maintain personal information from children under 13.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nUpdates to this Privacy Policy:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We may update this Privacy Policy to reflect changes in our information practices. We will notify you of significant changes through the App or other appropriate means.\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: '\nContact Us:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at [sr979151@gmail.com].\n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Please note that this privacy policy is a general template, and you should consult with a legal professional to ensure that it complies with applicable privacy regulations and specific requirements for your offline app.\n',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
