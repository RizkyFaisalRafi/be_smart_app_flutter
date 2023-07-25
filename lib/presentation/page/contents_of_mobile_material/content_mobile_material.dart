import 'package:be_smart_app/util/theme.dart';
import 'package:flutter/material.dart';

class ContentMobileMaterial extends StatelessWidget {
  const ContentMobileMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Judul Materi',
                style: TextStyle(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: Text('Isi Materinya')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(327, 50),
                  backgroundColor: Colors.blue[800],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  )),
              onPressed: () {},
              child: Text(
                'Selesai',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
