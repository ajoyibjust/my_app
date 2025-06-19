import 'package:flutter/material.dart';
import 'package:my_app/features/home/presentation/widgets/offer_zone.dart';

class OfferZoneGrid extends StatelessWidget {
  const OfferZoneGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisExtent: 300,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
        ),
        scrollDirection: Axis.horizontal,

        itemCount: 6,
        itemBuilder: (context, index) {
          return OfferZone();
        },
      ),
    );
  }
}
