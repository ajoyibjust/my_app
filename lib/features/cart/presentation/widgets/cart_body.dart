import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedBox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/widgets/my_text.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

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
              itemCount: 3,
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
                        bottom: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 2,
                        children: [
                          3.height,
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
                                child: Icon(
                                  Icons.delete_forever,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyText("Qty:1", color: Colors.grey),
                              MyText(" | ", color: Colors.grey.shade400),
                              ClipOval(
                                child: SizedBox(
                                  width: 12,
                                  height: 12,
                                  child: ColoredBox(color: Colors.blue),
                                ),
                              ),
                              MyText(" Blue", color: Colors.grey),
                            ],
                          ),
                          Row(
                            children: [
                              MyText(
                                "\$30 ",
                                size: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              MyText("\$60", color: Colors.grey),
                              Spacer(),
                              SizedBox(
                                width: 90,
                                height: 32,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          //? Mahsulotni kamaytirish uchun button
                                        },
                                        child: SizedBox(
                                          width: 26,
                                          height: 26,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey.shade200,
                                            ),
                                            child: Icon(Icons.remove, size: 18),
                                          ),
                                        ),
                                      ),
                                      MyText("1", size: 16),
                                      GestureDetector(
                                        onTap: () {
                                          //? Mahsulotni sonini oshirish uchun button
                                        },
                                        child: SizedBox(
                                          width: 26,
                                          height: 26,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.indigo,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
              separatorBuilder: (context, index) => 15.height,
            ),
          ],
        ),
      ),
    );
  }
}
