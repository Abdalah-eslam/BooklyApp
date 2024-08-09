import 'package:booklyapp/Features/home/date/book/book.model.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/book_rating.dart';

import 'package:booklyapp/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.book});
  final BookModel book;
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
                child: CachedNetworkImage(
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.fill,
                    imageUrl: book.image!)),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  book.title.toString(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      Styles.textstyle24.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              // Text(
              //   'The Auther Of Book',
              //   style: Styles.textstyle18.copyWith(
              //       fontWeight: FontWeight.w100,
              //       color: Colors.grey.withOpacity(0.8)),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Free",
                    style: Styles.textstyle20
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: BookRating(
                      rating: 0,
                    ),
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
