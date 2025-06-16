import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/favorites/presentation/widgets/favorite_body.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
       title: MyText("Sevimlilar"),
      ),
      body: FavoriteBody(),
    );
  }
}
