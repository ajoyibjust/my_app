import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedBox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/utils/size_utils.dart';
import 'package:my_app/core/widgets/my_text.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

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
            ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SizedBox(
                      width: screenWidth(context) * 0.75,
                      height: 130,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          5.height,
                          MyText(
                            "Sofas",
                            size: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          MyText(
                            "Total 120 item available",
                            size: 15,
                            color: Colors.grey,
                          ),
                          10.height,
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_sharp),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        MyImages.sofas,
                        width: 150,
                        height: 150,
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
