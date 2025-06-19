import 'package:go_router/go_router.dart';
import 'package:my_app/core/routes/bottom_nav.dart';
import 'package:my_app/core/routes/cart_routes.dart';
import 'package:my_app/core/routes/categories_routes.dart';
import 'package:my_app/core/routes/favorites_routes.dart';
import 'package:my_app/core/routes/home_routes.dart';
import 'package:my_app/core/routes/profile_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return BottomNav(child: child);
      },
      routes: [
        homeRoute,
        categoriesRoutes,
        cartRoute,
        favoritesRoutes,
        profileRoutes,
        categoryItems,
      ],
    ),
  ],
);
