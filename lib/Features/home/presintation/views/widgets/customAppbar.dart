import 'package:booklyapp/core/utils/assetdata.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 24, top: 55, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            Assetdata.logo,
            height: 24,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
        ],
      ),
    );
  }
}
