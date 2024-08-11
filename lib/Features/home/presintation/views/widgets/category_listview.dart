import 'package:booklyapp/core/utils/widgets/custom_buton.dart';

import 'package:flutter/material.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key, required this.categoryList});
  final List categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: CustomButton(
                text: categoryList[index],
                color: Colors.black.withOpacity(.8),
                borderRadius: BorderRadius.zero,
              ),
            );
          },
        ),
      ),
    );
  }
}
