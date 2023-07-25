import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationStyle extends StatelessWidget {
  final String title;
  final String text;
  // String imageUrl;
  final String time;

  const NotificationStyle(this.title, this.text, this.time, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.schedule,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  // Image.asset(
                  //   imageUrl,
                  //   width: 16,
                  //   height: 16,
                  // ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        const Divider(
          color: Color(0xff707070),
          thickness: 1,
        )
      ],
    );
  }
}
