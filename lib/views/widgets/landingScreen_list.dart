import 'package:flutter/material.dart';

class LandingScreen_List extends StatelessWidget {
  String title;
  String subtitle;
  final IconData? listIcon;
  LandingScreen_List(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.listIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 65.0,
              child: Icon(
                listIcon,
                color: Colors.white,
                size: 35,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 65.0,
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Column(
          children: [
            SizedBox(
              width: 65.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 65.0,
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
            )
          ],
        )
      ],
    ));
  }
}
