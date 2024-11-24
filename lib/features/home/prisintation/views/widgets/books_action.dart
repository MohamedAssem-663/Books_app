import 'package:books_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              text: '99.99 E',
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              text: 'Free Preview',
              textColor: Colors.white,
              backgroundColor: Colors.orange,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
