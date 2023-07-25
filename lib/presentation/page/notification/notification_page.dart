import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../util/widget/notification_style.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Center(
                  child: Center(
                    child: Text(
                      'Notification',
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                NotificationStyle(
                  'Order #20181111123 has arrived!',
                  "What you've been waiting for has arrived! Don't forget\nto confirm on the history page!",
                  // 'assets/images/schedule-16px-grey.png',
                  '09-04-2021 17:51',
                ),
                const SizedBox(
                  height: 16,
                ),
                NotificationStyle(
                  'Order #20181111122 has been cancelled',
                  "Your order has been canceled by the system. Chat to\nthe shop owner for more information",
                  // 'assets/images/schedule-16px-grey.png',
                  '05-04-2021 17:51',
                ),
                const SizedBox(
                  height: 16,
                ),
                NotificationStyle(
                  'Order #20181111121 is being processed',
                  "hurray.. the seller is preparing your order wait a little\nlonger, okay?",
                  // 'assets/images/schedule-16px-grey.png',
                  '01-04-2021 17:51',
                ),
                const SizedBox(
                  height: 16,
                ),
                NotificationStyle(
                  'Order #20181111120 waiting for your payment',
                  "let's complete the payment or your order will be\nautomatically canceled by the system in 3 days",
                  // 'assets/images/schedule-16px-grey.png',
                  '25-03-2021 17:51',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
