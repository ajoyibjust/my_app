import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/widgets/my_text.dart';

class NewArrivalsProduct extends StatelessWidget {
  const NewArrivalsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  context.push("/categoriesItems");
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color: Colors.white,
                    ),
                    child: Center(
                      child: Image.asset(
                        MyImages.sofas,
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: GestureDetector(
                  child: Icon(
                    1 > 2 ? Icons.favorite : Icons.favorite_border,
                    color: 1 > 2 ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              MyText("Buddy chair", size: 15, fontWeight: FontWeight.w600),
              MyText("Modern saddle arms", size: 12, color: Colors.grey),
              Row(
                children: [
                  MyText("\$14 ", fontWeight: FontWeight.w500),
                  MyText("\$20", color: Colors.grey),
                  Spacer(),
                  Icon(Icons.star_outlined, color: Colors.amber, size: 18),
                  MyText("4.6"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
