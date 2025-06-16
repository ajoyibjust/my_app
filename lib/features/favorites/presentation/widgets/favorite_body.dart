import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedBox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/utils/size_utils.dart';
import 'package:my_app/core/widgets/my_text.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
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
                            child: Image.asset(
                              MyImages.sofas,
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 100,
                        right: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          5.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                "Shiny wooden Chair",
                                size: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              GestureDetector(
                                onTap: () {
                                  //? Sevimlilardan o'chirish uchun button
                                },
                                child: Icon(Icons.clear_rounded)),
                            ],
                          ),
                          MyText("Qty:1", color: Colors.grey),
                          10.height,
                          Row(
                            children: [
                              MyText(
                                "\$30 ",
                                size: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              MyText("\$60", color: Colors.grey),
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
              },
              separatorBuilder: (context, index) => 10.height,
            ),
          ],
        ),
      ),
    );
  }
}
