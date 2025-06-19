import 'package:go_router/go_router.dart';
import 'package:my_app/features/categories/presentation/screens/categories_screen.dart';
import 'package:my_app/features/categories/presentation/screens/categories_items_screen.dart';

final GoRoute categoriesRoutes = GoRoute(
  path: "/categories",
  builder: (context, state) => CategoriesScreen(),
);

final GoRoute categoryItems = GoRoute(
  path: "/categoriesItems",
  builder: (context, state) => CategoriesItemsScreen(),
);
