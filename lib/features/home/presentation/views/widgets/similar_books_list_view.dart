import 'package:books_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
