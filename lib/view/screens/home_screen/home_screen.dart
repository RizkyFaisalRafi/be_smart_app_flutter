import 'package:be_smart_app/view/screens/home_screen/home_screen_widget.dart';
import 'package:be_smart_app/view/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int activeIndex = 0;
  final imagesCarousel = [
    'assets/images/carousel_slider.png',
    'assets/images/carousel_slider.png',
    'assets/images/carousel_slider.png',
    'assets/images/carousel_slider.png',
    'assets/images/carousel_slider.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyNavigation(),
      bottomNavigationBar: bottomNav(),

      // body: SafeArea(
      //   child: Column(
      //     children: [
      //       Center(
      //         child: CarouselSlider.builder(
      //           itemCount: imagesCarousel.length,
      //           options: CarouselOptions(
      //             height: 150,
      //             // viewportFraction: 1,
      //             autoPlay: true,
      //             enlargeCenterPage: true,
      //             enlargeStrategy: CenterPageEnlargeStrategy.height,
      //             // reverse: true,
      //             autoPlayInterval: const Duration(seconds: 2),
      //             onPageChanged: (index, reason) =>
      //                 setState(() => activeIndex = index),
      //           ),
      //           itemBuilder: (context, index, realIndex) {
      //             final imageCarousel = imagesCarousel[index];
      //             return buildImage(imageCarousel, index);
      //           },
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 12,
      //       ),
      //       buildIndicator(),
      //       const Padding(
      //         padding: EdgeInsets.only(left: 28),
      //         child: Align(
      //           alignment: Alignment.centerLeft,
      //           child: Text(
      //             'Courses',
      //             style: TextStyle(
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //         ),
      //       ),
      //       grid(),
      //       const Padding(
      //         padding: EdgeInsets.only(left: 28),
      //         child: Align(
      //           alignment: Alignment.centerLeft,
      //           child: Text(
      //             'Information',
      //             style: TextStyle(
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //         ),
      //       ),
      //       information(),
      //     ],
      //   ),
      // ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      /// Akan bertambah 1 selectedIndexnya
      selectedIndex = index;
    });
  }

  Widget? bodyNavigation() {
    switch (selectedIndex) {
      case 0:
        return const HomeScreenWidget();
      case 1:
        return const SignInScreen();
      case 2:
        return const SignInScreen();
    }
    return null;
  }

  Widget bottomNav() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          // backgroundColor: Colors.amber,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check_circle),
              label: 'My Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xff49A35A),
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
