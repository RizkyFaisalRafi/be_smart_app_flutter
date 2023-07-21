import 'package:be_smart_app/util/theme.dart';
import 'package:be_smart_app/view/widget/list_progress.dart';
import 'package:flutter/material.dart';

class UiUxMaterialListScreen extends StatelessWidget {
  const UiUxMaterialListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Materi UI/UX'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        // color: const Color(0xffF1F1F1),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Step 1
                Text(
                  'Step 1',
                  style: TextStyle(fontWeight: semiBold, fontSize: 16),
                ),
                const ListProgress(),

                const SizedBox(
                  height: 12,
                ),

                // Step 2
                Text(
                  'Step 2',
                  style: TextStyle(fontWeight: semiBold, fontSize: 16),
                ),
                const ListProgress(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
