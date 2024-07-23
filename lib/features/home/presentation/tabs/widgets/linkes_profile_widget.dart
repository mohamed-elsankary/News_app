import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkesProfileWidget extends StatelessWidget {
  const LinkesProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
