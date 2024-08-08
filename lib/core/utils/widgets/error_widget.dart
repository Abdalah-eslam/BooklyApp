import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Errwidget extends StatelessWidget {
  const Errwidget({super.key, required this.errormassage});
  final String errormassage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errormassage));
  }
}
