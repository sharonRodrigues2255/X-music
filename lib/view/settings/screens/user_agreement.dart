import 'package:flutter/material.dart';

class UserAgreement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Agreement"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'User Agreement for X Music\n\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'This User Agreement ("Agreement") sets forth the terms and conditions under which you ("User" or "you") may use the X Music offline mobile application ("App"). By using the App, you agree to comply with and be bound by this Agreement. If you do not agree to these terms, please do not use the App.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Use of the App\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'The App is provided for your personal, non-commercial use. You may not use the App in any way that violates applicable laws or regulations or in a manner that could harm, disable, overburden, or impair the App.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'User Content\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'The App may allow you to submit, post, or display user-generated content. You are solely responsible for the content you provide and must not violate the rights of others or post content that is unlawful, offensive, or harmful.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Intellectual Property\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'All intellectual property rights related to the App, including copyrights, trademarks, and patents, are owned by X Music. You may not reproduce, distribute, or modify any part of the App without our explicit consent.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Termination\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'We may terminate or suspend your access to the App at our discretion if you violate this Agreement or engage in any activity that may harm the App or other users.\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: 'Disclaimer\n',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'The App is provided "as is" and without warranties. We do not guarantee the accuracy, availability, or security of the App. You use the App at your own risk.\n\n',
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
                      'If you have any questions or concerns about this User Agreement or the use of the App, please contact us at [sr979151@gmail.com].\n\n',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text:
                      'Please note that this user agreement is a general template, and you should consult with a legal professional to ensure that it complies with applicable legal regulations and specific requirements for your offline app.\n\n',
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
