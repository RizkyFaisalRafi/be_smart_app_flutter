import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double containerWidth = screenWidth * 0.5;
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: const Text('About'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/be_smart_logo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'BeSmart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aplikasi versi 1.0 - BeSmart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'BeSmart merupakan sebuah aplikasi yang berfokus pada pembelajaran dan jasa di bidang IT.',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
