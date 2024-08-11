import 'package:equatable/equatable.dart';

import 'author.dart';
import 'identifiers.dart';
import 'rating.dart';

class DetailsBook extends Equatable {
  final int? id;
  final String? title;
  final String? image;
  final Identifiers? identifiers;
  final List<Author>? authors;
  final num? publishDate;
  final num? numberOfPages;
  final String? description;
  final Rating? rating;

  const DetailsBook({
    this.id,
    this.title,
    this.image,
    this.identifiers,
    this.authors,
    this.publishDate,
    this.numberOfPages,
    this.description,
    this.rating,
  });

  factory DetailsBook.fromJson(Map<String, dynamic> json) => DetailsBook(
        id: json['id'] as int?,
        title: json['title'] as String?,
        image: json['image'] as String?,
        identifiers: json['identifiers'] == null
            ? null
            : Identifiers.fromJson(json['identifiers'] as Map<String, dynamic>),
        authors: (json['authors'] as List<dynamic>?)
            ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
            .toList(),
        publishDate: json['publish_date'] as num?,
        numberOfPages: json['number_of_pages'] as num?,
        description: json['description'] as String?,
        rating: json['rating'] == null
            ? null
            : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
        'identifiers': identifiers?.toJson(),
        'authors': authors?.map((e) => e.toJson()).toList(),
        'publish_date': publishDate,
        'number_of_pages': numberOfPages,
        'description': description,
        'rating': rating?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      title,
      image,
      identifiers,
      authors,
      publishDate,
      numberOfPages,
      description,
      rating,
    ];
  }
}
