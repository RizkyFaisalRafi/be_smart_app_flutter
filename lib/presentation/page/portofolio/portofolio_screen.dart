import 'package:be_smart_app/util/theme.dart';
import 'package:flutter/material.dart';

class PortofolioScreen extends StatelessWidget {
  const PortofolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffEFEFEF),
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: const Text('Portofolio'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Coming Soon',
              style: TextStyle(
                fontWeight: bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
