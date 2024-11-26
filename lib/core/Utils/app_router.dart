import 'package:books_app/features/Splash/presintation/views/splash_view.dart';
import 'package:books_app/features/home/prisintation/views/book_details_view.dart';
import 'package:books_app/features/home/prisintation/views/home_view.dart';
import 'package:books_app/features/search/presintation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetails';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
