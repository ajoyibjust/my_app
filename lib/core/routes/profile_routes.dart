import 'package:go_router/go_router.dart';
import 'package:my_app/features/profile/presentation/screens/profile_screen.dart';

final GoRoute profileRoutes = GoRoute(
  path: "/profile",
  builder: (context, state) => ProfileScreen(),
);
