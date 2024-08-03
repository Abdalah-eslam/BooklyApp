import 'package:booklyapp/core/utils/assetdata.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/appRouters.dart';

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
              onPressed: () {
                GoRouter.of(context).push(Approuter.ksearchview);
              },
              icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
        ],
      ),
    );
  }
}
