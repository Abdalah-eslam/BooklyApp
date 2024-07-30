import 'package:booklyapp/core/utils/assetdata.dart';
import 'package:flutter/material.dart';

class Bookitem extends StatelessWidget {
  const Bookitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: 2.3 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.amberAccent,
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(Assetdata.logo))),
        ),
      ),
    );
  }
}
