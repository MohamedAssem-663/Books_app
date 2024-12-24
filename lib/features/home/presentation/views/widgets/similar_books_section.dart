import 'package:books_app/core/Utils/styles.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:books_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You Can Also Like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SimilarBooksListView(),
            ],
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMesage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
