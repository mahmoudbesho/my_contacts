import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class startSocialMedia extends StatelessWidget {
  String socialMedia;
  String socialMediaLink;
  startSocialMedia({
    super.key,
    required this.socialMedia,
    required this.socialMediaLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.deepOrange),
          ),
          onPressed: () {
            launchUrl(Uri.parse(socialMediaLink),
                mode: LaunchMode.externalApplication);
          },
          child: Text('this botton'),
        ),
      ),
    );
  }
}
