import 'package:books_app/constants.dart';
import 'package:books_app/core/Utils/assets.dart';
import 'package:books_app/core/Utils/styles.dart';
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
          const BestSellerListView(),
        ],
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            children: [
              Text(
                'Harry Potter and the Goblet of Fire ',
              ),
              Text('Harry Potter  ')
            ],
          ),
        ],
      ),
    );
  }
}
