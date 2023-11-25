import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:new_besho5/wedgets/start.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
  String socialMedia;
  String socialMediaLink;

  SocialMediaIcon({
    Key? key,
    required this.socialMedia,
    required this.socialMediaLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$socialMedia'),
          radius: 20,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange),
                  ),
                  onPressed: () {
                    launchUrl(Uri.parse(socialMediaLink),
                        mode: LaunchMode.externalApplication);
                  },
                  child: Text('start $socialMedia'),
                );
              });
        },
      ),
    );
  }
}
