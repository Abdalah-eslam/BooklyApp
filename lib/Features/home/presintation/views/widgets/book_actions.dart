import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_buton.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CustomButton(
              text: r'Free',
              color: Colors.white,
              style: Styles.textstyle24
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16))),
          CustomButton(
              text: 'Free preview',
              color: const Color.fromARGB(255, 227, 114, 9),
              style: Styles.textstyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16))),
        ],
      ),
    );
  }
}
