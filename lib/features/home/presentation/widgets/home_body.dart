import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedbox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/home/presentation/widgets/product_grid.dart';
import 'package:my_app/features/home/presentation/widgets/section_header.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          spacing: 20,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Qidirish...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
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
                        50.height,
                        MyText("View More", color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SectionHeader(title: "Yangi kelganlar", onViewAll: SizedBox.shrink),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
