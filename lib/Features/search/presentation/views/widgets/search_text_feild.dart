import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextFeild extends StatelessWidget {
  const SearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffix: const Icon(FontAwesomeIcons.magnifyingGlass),
          enabledBorder: buildoutlineborder(),
          hintText: 'Search'),
    );
  }

  OutlineInputBorder buildoutlineborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}
