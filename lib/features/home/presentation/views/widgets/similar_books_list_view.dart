import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:books_app/features/home/presentation/manger/similar_books_cubit/similar_book_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: CustomBookImage(
                    imageUrl:
                        'https://tse1.mm.bing.net/th?id=OIP.N8hUb6sJj77LTt55JEOAcQHaEo&pid=Api&P=0&h=220',
                  ),
                );
              },
              itemCount: 10,
            ),
          );
        } else if (state is SimilarBookFailure) {
          return CustomErrorWidget(errMesage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
