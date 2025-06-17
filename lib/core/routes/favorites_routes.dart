import 'package:go_router/go_router.dart';
import 'package:my_app/features/favorites/presentation/screens/favorites_screen.dart';

final GoRoute favoritesRoutes = GoRoute(
  path: "/favorites",
  builder: (context, state) => FavoritesScreen(),
);
