import 'package:go_router/go_router.dart';
import 'package:my_app/features/home/presentation/screens/home_screen.dart';

final GoRoute homeRoute = GoRoute(
  path: "/",
  builder: (context, state) => HomeScreen(),
);
