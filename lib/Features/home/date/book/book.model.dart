import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final int? id;
  final String? title;
  final String? image;

  const BookModel({this.id, this.title, this.image});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
      };

  @override
  List<Object?> get props => [id, title, image];
}
