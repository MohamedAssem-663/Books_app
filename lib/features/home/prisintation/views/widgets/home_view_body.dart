import 'package:books_app/constants.dart';
import 'package:books_app/core/Utils/styles.dart';
import 'package:books_app/features/home/prisintation/views/widgets/best_seller_List_view_item.dart';
import 'package:books_app/features/home/prisintation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/home/prisintation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          Text(
            'Best Seller',
            style: Styles.textStyle18.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 20,
          ),
          const BestSellerListView(),
        ],
      ),
    );
  }
}
