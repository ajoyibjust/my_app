import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedbox_extension.dart';
import 'package:my_app/core/widgets/my_text.dart';
import 'package:my_app/features/profile/presentation/widgets/profile_items.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Column(
                  children: [
                    10.height,
                    MyText("Profile", size: 18, fontWeight: FontWeight.w500),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 60,
                            height: 55,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 5,
                                  right: 5,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    8,
                                  ),
                                  child: Image.network(
                                    "https://media.istockphoto.com/id/1392528328/photo/portrait-of-smiling-handsome-man-in-white-t-shirt-standing-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=6vUtfKvHhNsK9kdNWb7EJlksBDhBBok1bNjNRULsAYs=",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          5.width,
                          Column(
                            children: [
                              MyText(
                                "User name",
                                size: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              MyText(""),
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.edit, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Column(
                  spacing: 25,
                  children: [
                    ProfileItems(
                      icon: Icons.check_box_outline_blank_rounded,
                      name: "Orders",
                      leading: "Ongoing orders, Recent orders",
                    ),
                    ProfileItems(
                      icon: Icons.favorite,
                      name: "Wishlist",
                      leading: "Your save product",
                    ),
                    ProfileItems(
                      icon: Icons.payment,
                      name: "Payment",
                      leading: "Saved card, Wallets",
                    ),
                    ProfileItems(
                      icon: Icons.location_on_outlined,
                      name: "Saved Address",
                      leading: "Home, Office",
                    ),
                    ProfileItems(
                      icon: Icons.language,
                      name: "Language",
                      leading: "Select your language here",
                    ),
                    ProfileItems(
                      icon: Icons.notifications,
                      name: "Notification",
                      leading: "Offers, Order tracking messages",
                    ),
                    ProfileItems(
                      icon: Icons.settings,
                      name: "Settings",
                      leading: "app settings, Dark mode",
                    ),
                    ProfileItems(
                      icon: Icons.description,
                      name: "Terms & Conditions",
                      leading: "T&C for use of platform",
                    ),
                    ProfileItems(
                      icon: Icons.help,
                      name: "Help",
                      leading: "Customer Support, FAQS",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
