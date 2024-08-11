import 'package:booklyapp/Features/home/manger/details_cubit/details_cubit.dart';
import 'package:booklyapp/Features/home/presintation/views/widgets/bookdetialsbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookView extends StatefulWidget {
  const BookView({super.key, required this.id});
  final int id;

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  @override
  void initState() {
    BlocProvider.of<DetailsCubit>(context).fetchDetailsBooks(widget.id);
    BlocProvider.of<SamilarCubit>(context).fetchSamilersBooks(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Bookdetialsbody());
  }
}
