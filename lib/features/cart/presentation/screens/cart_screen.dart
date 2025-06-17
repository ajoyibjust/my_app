import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/cart/presentation/widgets/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            context.go("/");
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: MyText("Savat"),
      ),
      body: CartBody(),
    );
  }
}
