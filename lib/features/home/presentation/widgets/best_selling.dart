import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedbox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/widgets/my_text.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return      SizedBox(
              width: double.infinity,
              height: 170,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.asset(MyImages.banner, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          "Best Selling",
                          color: Colors.white,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        MyText(
                          "Comfars & Modern",
                          color: Colors.white70,
                          size: 16,
                        ),
                        MyText(
                          "life Stylish Safa",
                          color: Colors.white70,
                          size: 16,
                        ),
                        30.height,
                        MyText("View More", color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}