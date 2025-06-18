import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          image: product['image'],
          title: product['title'],
          price: product['price'],
          isLiked: product['isLiked'],
          onLike: () {},
        );
      },
    );
  }
}

final products = [
  {
    'image': 'https://picsum.photos/200',
    'title': 'Mahsulot 1',
    'price': 89000.0,
    'isLiked': false,
  },
  {
    'image': 'https://picsum.photos/201',
    'title': 'Mahsulot 2',
    'price': 109000.0,
    'isLiked': true,
  },
  {
    'image': 'https://picsum.photos/202',
    'title': 'Mahsulot 2',
    'price': 109000.0,
    'isLiked': true,
  },
  {
    'image': 'https://picsum.photos/203',
    'title': 'Mahsulot 2',
    'price': 109000.0,
    'isLiked': false,
  },
];
