import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedbox_extension.dart';
import 'package:my_app/core/widgets/my_text.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(0),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: ClipOval(
                      child: Image.network(
                        "https://media.istockphoto.com/id/1392528328/photo/portrait-of-smiling-handsome-man-in-white-t-shirt-standing-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=6vUtfKvHhNsK9kdNWb7EJlksBDhBBok1bNjNRULsAYs=",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  10.width,
                  MyText(
                    "Hello, User name",
                    size: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.clear, color: Colors.grey),
                  ),
                ],
              ),
              30.height,
              drawerItems(title: "Tungi rejim"),
              drawerItems(title: "Tungi rejim"),
              drawerItems(title: "Tungi rejim"),
              drawerItems(title: "Tungi rejim"),
            ],
          ),
        ),
      ),
    );
  }
}

drawerItems({required String title, String? push}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: MyText(title, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      Divider(color: Colors.grey.shade200),
    ],
  );
}
