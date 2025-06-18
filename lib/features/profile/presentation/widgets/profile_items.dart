import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedbox_extension.dart';
import 'package:my_app/core/widgets/my_text.dart';

class ProfileItems extends StatelessWidget {
  final IconData icon;
  final String name;
  final String leading;

  const ProfileItems({
    super.key,
    required this.icon,
    required this.name,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 44,
          height: 44,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey.shade50,
            ),
            child: Center(child: Icon(icon)),
          ),
        ),
        10.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(name, size: 16, fontWeight: FontWeight.w500),
            MyText(leading, color: Colors.grey),
          ],
        ),
      ],
    );
  }
}
