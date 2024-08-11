part of 'home_cubit_cubit.dart';

sealed class HomeCubitState extends Equatable {
  const HomeCubitState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeCubitState {}

final class HomeCubitSucsses extends HomeCubitState {
  final List<BookModel> books;

  const HomeCubitSucsses(this.books);
}

final class HomeCubitLoading extends HomeCubitState {}

final class HomeCubitfailure extends HomeCubitState {
  final String errmasage;

  const HomeCubitfailure(this.errmasage);
}
