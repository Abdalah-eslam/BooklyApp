import 'package:booklyapp/Features/home/presintation/views/widgets/book_rating.dart';
import 'package:booklyapp/core/utils/assetdata.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.26,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.amberAccent,
                    image: const DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(Assetdata.logo))),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'The name of book is name of book',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      Styles.textstyle24.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'The Auther Of Book',
                style: Styles.textstyle18.copyWith(
                    fontWeight: FontWeight.w100,
                    color: Colors.grey.withOpacity(0.8)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r'19.99 $',
                    style: Styles.textstyle20
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: BookRating(),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
