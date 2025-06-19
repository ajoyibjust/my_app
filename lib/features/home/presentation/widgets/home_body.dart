import 'package:flutter/material.dart';
import 'package:my_app/features/home/presentation/widgets/best_selling.dart';
import 'package:my_app/features/home/presentation/widgets/new_arrivals_grid.dart';
import 'package:my_app/features/home/presentation/widgets/offer_zone_grid.dart';
import 'package:my_app/features/home/presentation/widgets/section_header.dart';
import 'package:my_app/features/home/presentation/widgets/trending_product.dart';

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

            BestSelling(),

            SectionHeader(
              title: "Yangi kelganlar",
              onViewAll: "/categoriesItems",
            ),
            NewArrivalsGrid(),
            SectionHeader(
              title: "Trenddagi mebel",
              onViewAll: "/categoriesItems",
            ),
            TrendingProduct(),
            BestSelling(),

            SectionHeader(
              title: "Taklif zonasi",
              onViewAll: "/categoriesItems",
            ),
            OfferZoneGrid(),
          ],
        ),
      ),
    );
  }
}
