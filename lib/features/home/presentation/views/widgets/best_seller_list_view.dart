// import 'package:books_app/core/widgets/custom_error_widget.dart';
// import 'package:books_app/core/widgets/custom_loading_indicator.dart';
// import 'package:books_app/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
// import 'package:books_app/features/home/presentation/views/widgets/book_list_view_item.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class BestSellerListView extends StatelessWidget {
//   const BestSellerListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
//       builder: (context, state) {
//         if (state is NewsetBooksSuccess) {
//           return ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.zero,
//             itemCount: state.books.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                 child: BookListViewItem(
//                   bookModel: state.books[index],
//                 ),
//               );
//             },
//           );
//         } else if (state is NewsetBooksFailure) {
//           return CustomErrorWidget(errMesage: state.errMessage);
//         } else {
//           return const CustomLoadingIndicator();
//         }
//       },
//     );
//   }
// }
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:books_app/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
              childCount: state.books.length,
            ),
          );
        } else if (state is NewsetBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMesage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
