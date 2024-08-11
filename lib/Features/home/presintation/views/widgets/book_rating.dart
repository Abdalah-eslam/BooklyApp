import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.data,
    this.namberpages,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num? data, namberpages;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4D),
        ),
        Text(
          ' ($data)',
          style: Styles.textstyle18,
        ),
        const SizedBox(width: 5),
        Text(
          '($namberpages)',
          style:
              Styles.textstyle16.copyWith(color: Colors.grey.withOpacity(0.3)),
        )
      ],
    ));
  }
}
