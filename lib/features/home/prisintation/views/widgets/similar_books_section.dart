import 'package:books_app/core/Utils/styles.dart';
import 'package:books_app/features/home/prisintation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
