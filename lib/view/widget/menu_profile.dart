import 'package:be_smart_app/util/theme.dart';
import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final Function()? onTap;

  const MenuProfile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              child: Image.asset(
                image,
                // 'assets/images/icon_calldev.png', //
                width: 48,
                height: 48,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    // 'Hubungi Developer',
                    style: TextStyle(fontWeight: bold, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subTitle,
                    // 'Sampaikan kendala, kritik, dan saran Anda.',
                    style: TextStyle(fontWeight: reguler, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
