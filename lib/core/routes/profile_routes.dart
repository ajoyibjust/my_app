import 'package:go_router/go_router.dart';
import 'package:my_app/features/profile/presentation/screens/profile_screen.dart';

final profileRoutes = [
  GoRoute(path: "/profile", builder: (context, state) => ProfileScreen()),
];
