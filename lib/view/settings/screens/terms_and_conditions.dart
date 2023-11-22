import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditions"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Terms and Conditions for X Music\n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'By using the X Music mobile application ("App"), you agree to comply with and be bound by the following terms and conditions. Please read these terms carefully before using the App.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '1. Acceptance of Terms\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'By accessing or using the App, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, you may not use the App.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '2. User Responsibilities\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'You are responsible for maintaining the confidentiality of your account and password and for restricting access to your device. You agree to accept responsibility for all activities that occur under your account or password.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '3. Prohibited Activities\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'You may not engage in any activities that violate the law or the rights of others while using the App. Prohibited activities include, but are not limited to, unauthorized access, data mining, or any action that disrupts the normal functioning of the App.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '4. Intellectual Property\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'The content, features, and functionality of the App are the exclusive property of X Music. You may not reproduce, distribute, modify, or create derivative works of any part of the App without our express consent.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '5. Limitation of Liability\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'X Music and its affiliates shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, whether incurred directly or indirectly, or any loss of data, use, goodwill, or other intangible losses, resulting from your use of the App.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '6. Governing Law\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'These Terms and Conditions are governed by and construed in accordance with the laws of [Your Country], and you irrevocably submit to the exclusive jurisdiction of the courts in that state or location.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: '7. Changes to Terms\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'We reserve the right, at our sole discretion, to modify or replace these Terms and Conditions at any time. By continuing to access or use the App after those revisions become effective, you agree to be bound by the revised terms.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Contact Us\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'If you have any questions about these Terms and Conditions, please contact us at [sr979151@gmail.com].\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'Please note that this terms and conditions template is a general guide, and you should seek legal advice to ensure it complies with the specific legal requirements for your application and jurisdiction.\n',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
