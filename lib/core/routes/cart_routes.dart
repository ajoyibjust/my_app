import 'package:go_router/go_router.dart';
import 'package:my_app/features/cart/presentation/screens/cart_screen.dart';

final GoRoute cartRoute = GoRoute(
  path: "/cart",
  builder: (context, state) => CartScreen(),
);
