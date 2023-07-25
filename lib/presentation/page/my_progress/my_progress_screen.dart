import 'package:be_smart_app/util/theme.dart';
import 'package:be_smart_app/util/widget/list_progress.dart';
import 'package:flutter/material.dart';

class MyProgressScreen extends StatelessWidget {
  const MyProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF1F1F1),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Active Progress',
                style: TextStyle(fontWeight: semiBold, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const ListProgress()
            ],
          ),
        ),
      ),
    );
  }
}
