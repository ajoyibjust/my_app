import 'package:go_router/go_router.dart';
import 'package:my_app/features/categories/presentation/screens/categories_screen.dart';

final GoRoute categoriesRoutes = GoRoute(
  path: "/categories",
  builder: (context, state) => CategoriesScreen(),
);
