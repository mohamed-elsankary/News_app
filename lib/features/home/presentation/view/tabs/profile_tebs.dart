import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileTebs extends StatelessWidget {
  const ProfileTebs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(50)),
                  width: 55,
                  height: 55,
                  child: const Icon(
                    FontAwesomeIcons.solidMoon,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/news.png',
              color: Colors.blue,
            ),
            const SizedBox(
              height: 220,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    size: 35,
                  ),
                  const Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    size: 35,
                  ),
                  Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red[600],
                    size: 35,
                  ),
                  Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green[400],
                    size: 35,
                  ),
                  Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue[700],
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'App Version : 1.0.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
