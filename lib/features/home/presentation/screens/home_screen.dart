import 'package:flutter/material.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/home/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                spacing: 10,
                children: [
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
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.list),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: ClipOval(
                      child: Image.network(
                        "https://media.istockphoto.com/id/1392528328/photo/portrait-of-smiling-handsome-man-in-white-t-shirt-standing-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=6vUtfKvHhNsK9kdNWb7EJlksBDhBBok1bNjNRULsAYs=",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText("Assalomu Alaykum", size: 12),
                      MyText("User Name"),
                    ],
                  ),
                  Spacer(),
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
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined),
                          padding: EdgeInsets.zero,
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
      body: HomeBody(),
    );
  }
}
