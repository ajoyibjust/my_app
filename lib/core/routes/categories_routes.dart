import 'package:go_router/go_router.dart';
import 'package:my_app/features/categories/presentation/screens/categories_screen.dart';
import 'package:my_app/features/categories/presentation/screens/categories_items_screen.dart';

final categoriesRoutes = [
  GoRoute(path: "/categories", builder: (context, state) => CategoriesScreen()),
  GoRoute(
    path: "/categoriesItems",
    builder: (context, state) => CategoriesItemsScreen(),
  ),
];
