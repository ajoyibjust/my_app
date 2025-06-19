import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedbox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/widgets/my_text.dart';

class OfferZone extends StatelessWidget {
  const OfferZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey.shade50,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: SizedBox(
            width: 80,
            height: 80,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: Center(
                child: Image.asset(MyImages.sofas, width: 60, height: 60),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 100, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 1,
            children: [
              2.height,
              MyText(
                "Shiny wooden Chair",
                size: 15,
                fontWeight: FontWeight.w600,
              ),
              MyText("Modern arms chairs", size: 12, color: Colors.grey),
              Row(
                children: List.generate(
                  5,
                  (index) =>
                      Icon(Icons.star_sharp, color: Colors.amber, size: 12),
                ),
              ),

              Row(
                children: [
                  MyText("\$30 ", size: 15, fontWeight: FontWeight.w600),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      //? Sevimlilardan cartga o'tish uchun button
                    },
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey,
                        ),
                        child: Icon(
                          Icons.card_travel_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
