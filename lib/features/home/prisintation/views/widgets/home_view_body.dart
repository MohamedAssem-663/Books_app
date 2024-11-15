import 'package:books_app/constants.dart';
import 'package:books_app/core/Utils/styles.dart';
import 'package:books_app/features/home/prisintation/views/widgets/best_seller_list_view.dart';
import 'package:books_app/features/home/prisintation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/home/prisintation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const BestSellerListView(),
      ],
    );
  }
}
