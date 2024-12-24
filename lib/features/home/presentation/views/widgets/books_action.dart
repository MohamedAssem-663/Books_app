import 'package:books_app/core/Utils/function/launch_url.dart';
import 'package:books_app/core/widgets/custom_button.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              text: "Free",
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              text: getText(bookModel),
              textColor: Colors.white,
              backgroundColor: Colors.orange,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
