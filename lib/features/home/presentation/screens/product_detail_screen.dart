import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedBox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/home/presentation/widgets/carousel_product_detail.dart';

class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({super.key});

  final List<Color> _colors = [Colors.amber, Colors.blue, Colors.brown];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 380,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 220,
                      child: Image.asset(
                        MyImages.backGround,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back, color: Colors.white70),
                          Spacer(flex: 2),
                          MyText("Chairs", color: Colors.white70),
                          Spacer(),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withAlpha(30),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          15.width,
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withAlpha(30),
                              ),
                              child: Center(
                                child: Icon(Icons.favorite, color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(1, 0.5),
                      child: SizedBox(
                        height: 280,
                        child: CarouselProductDetail(),
                      ),
                    ),

                    Positioned(
                      right: 15,
                      bottom: 15,
                      child: Row(
                        children: List.generate(_colors.length, (index) {
                          return Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _colors[index],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade200),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          "Buddy Chair",
                          size: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(color: Colors.red.shade100),
                          child: MyText("20% OFF", color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText("4.0 ", size: 16),
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index == 4 ? Colors.grey : Colors.amber,
                              size: 16,
                            );
                          }),
                        ),
                        MyText("|", color: Colors.grey.shade500),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
