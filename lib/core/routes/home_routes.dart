import 'package:go_router/go_router.dart';
import 'package:my_app/features/home/presentation/screens/home_screen.dart';
import 'package:my_app/features/home/presentation/screens/product_detail_screen.dart';

final GoRoute homeRoute = GoRoute(
  path: "/",
  builder: (context, state) => HomeScreen(),
);

final GoRoute productDetailRoute = GoRoute(
  path: "/productDetail",
  builder: (context, state) => ProductDetailScreen(),
);
