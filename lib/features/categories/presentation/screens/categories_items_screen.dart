import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/categories/presentation/widgets/categories_grid.dart';

class CategoriesItemsScreen extends StatelessWidget {
  const CategoriesItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_back),
                  ),
                ),

                MyText("Kategoriyalar"),
                SizedBox(
                  width: 35,
                  height: 35,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 0.6,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Center(child: Icon(Icons.notifications_outlined)),
                  ),
                ),
              ],
            ),
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

            CategoriesGrid(),
          ],
        ),
      ),
    );
  }
}
