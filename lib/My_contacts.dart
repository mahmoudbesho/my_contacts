import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'wedgets/social_Media_Icon.dart';

// ignore: must_be_immutable
class MyContact extends StatelessWidget {
  MyContact({super.key});
  Map<String, String> socialMedia = {
    '1.jpg': 'https://wa.me/+201026187327',
    '2.jpg': 'https://www.facebook.com/',
    '3.jpg': 'https://instagram.com/mhmoudelbeshbeshy?igshid=MzMyNGUyNmU2YQ==',
    '4.jpg': 'https://www.youtube.com/',
    '5.jpg': 'https://www.linkedin.com/feed/',
    '6.jpg': 'https://twitter.com/home?lang=ar',
    '7.jpg': 'tg-me.com/Besho8',
    '8.jpg': 'https://www.snapchat.com/ar',
  };
  @override
  Widget build(BuildContext mycontext) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/01.jpg'),
                radius: 100,
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mahmoud shreef',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.near_me_rounded,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('camera:01026187327'));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '01026187327',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      color: Colors.red,
                      icon: Icon(
                        Icons.phone,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('tel:01026187327'));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: socialMedia.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (mycontext, index) {
                  return SocialMediaIcon(
                    socialMedia: socialMedia.keys.toList()[index],
                    socialMediaLink: socialMedia.values.toList()[index],
                  );
                },
                shrinkWrap: true,
                padding: EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
