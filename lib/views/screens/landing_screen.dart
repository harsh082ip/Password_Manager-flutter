import 'package:flutter/material.dart';
import 'package:password_manager/views/widgets/landingScreen_list.dart';

class Landing_Screen extends StatelessWidget {
  const Landing_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/abstract.jpg', fit: BoxFit.cover),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 65.0, left: 20.0),
                    child: const Text(
                      'Welcome to',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 216, 211, 211),
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 18.0),
                    child: const Text(
                      'TrustyPass',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'LilitaOne',
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  LandingScreen_List(
                      title: 'Security',
                      subtitle:
                          'provides a safe and encrypted environment to store all your passwords in one place.',
                      listIcon: Icons.security),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.018,
                  ),
                  LandingScreen_List(
                    title: 'Set Your Master Key',
                    subtitle:
                        'Create a strong Master Key during setup to ensure exclusive access to your password vault',
                    listIcon: Icons.key,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.018,
                  ),
                  LandingScreen_List(
                      title: 'Easy-to-Use Interface',
                      subtitle:
                          'Our user-friendly interface makes it effortless to add, view, and manage your passwords.',
                      listIcon: Icons.phone_android),
                  SizedBox(
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height - 220),
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 135, 5, 5),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Download Wallpaper',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
