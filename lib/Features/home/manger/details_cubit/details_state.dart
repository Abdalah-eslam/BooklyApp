part of 'details_cubit.dart';

sealed class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

final class DetailsInitial extends DetailsState {}

final class DetailsSucsses extends DetailsState {
  final DetailsBook detailsbook;

  const DetailsSucsses(this.detailsbook);
}

final class SamilerSucsses extends DetailsState {
  final List<BookModel> books;

  const SamilerSucsses(this.books);
}

final class DetailsLoading extends DetailsState {}

final class DetailsFaliure extends DetailsState {
  final String errmassage;

  const DetailsFaliure(this.errmassage);
}
