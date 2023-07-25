import 'package:be_smart_app/util/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../languages_material_list/languages_material_list_screen.dart';
import '../mobile_material_list/mobile_material_list_screen.dart';
import '../product/home_product.dart';
import '../ui_ux_material_list/ui_ux_material_list_screen.dart';
import '../web_material_list/web_material_list_screen.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
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
    final List<String> menuItems = [
      'Mobile Development',
      'Web Development',
      'UI / UX',
      'Languages'
    ];
    final List<String> menuItemsServices = [
      'Mobile Development',
      'Web Development',
      'UI / UX',
      'Languages'
    ];
    final List<String> menuItemsProduct = [
      'Elektronik & Aksesoris',
      'Pakaian',
      'Buku',
      'Sepatu'
    ];

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xffF1F1F1),
          child: Center(
            child: Column(
              children: [
                Center(
                  heightFactor: 1.2,
                  child: CarouselSlider.builder(
                    itemCount: imagesCarousel.length,
                    options: CarouselOptions(
                      height: 150,
                      // viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      // reverse: true,
                      autoPlayInterval: const Duration(seconds: 4),
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final imageCarousel = imagesCarousel[index];
                      return buildImage(imageCarousel, index);
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),

                buildIndicator(),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),

                      // Product
                      const Text(
                        'Product',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      // Body Grid Product
                      Container(
                        height: 340,
                        margin: const EdgeInsets.all(4),
                        // color: Colors.amber,
                        padding: const EdgeInsets.all(8),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: menuItemsProduct.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                if (index == 0) {
                                  // Navigasi ke Product Electronic & Aksesoris
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomeProduct()),
                                  );
                                } else if (index == 1) {
                                  // Navigasi ke Product Pakaian
                                } else if (index == 2) {
                                  // Navigasi ke Product Buku
                                } else if (index == 3) {
                                  // Navigasi ke Product Sepatu
                                }
                              },
                              child: Card(
                                elevation: 4.0,
                                color: Colors.black,
                                // margin: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      index == 0
                                          ? 'assets/images/be_smart_logo.png'
                                          : index == 1
                                              ? 'assets/images/be_smart_logo.png'
                                              : index == 2
                                                  ? 'assets/images/be_smart_logo.png'
                                                  : index == 3
                                                      ? 'assets/images/be_smart_logo.png'
                                                      : 'assets/images/be_smart_logo.png',
                                      width: 110,
                                      height: 110,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomCenter,
                                        decoration: const BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            menuItemsProduct[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // Services
                      const Text(
                        'Services',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      // Body Grid Services
                      Container(
                        height: 340,
                        margin: const EdgeInsets.all(4),
                        // color: Colors.amber,
                        padding: const EdgeInsets.all(8),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: menuItemsServices.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                if (index == 0) {
                                  // ShowModalBottomSheet Mobile
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) => Column(
                                      children: [
                                        Container(
                                          height: 180,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/be_smart_logo.png'),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                              'Membangun website sesuai kebutuhan industri global dan sesuai kebutuhan Anda.'),
                                        )
                                      ],
                                    ),
                                  );
                                } else if (index == 1) {
                                  // ShowModalBottomSheet Web
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) => Column(
                                      children: [
                                        Container(
                                          height: 180,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/be_smart_logo.png'),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                              'Membangun aplikasi berdasarkan user experience dan tampilan yang menarik.'),
                                        )
                                      ],
                                    ),
                                  );
                                } else if (index == 2) {
                                  // ShowModalBottomSheet UI/UX
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) => Column(
                                      children: [
                                        Container(
                                          height: 180,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/be_smart_logo.png'),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                              'Membuat desain berkualitas tinggi yang bisa disesuaikan dengan kebutuhan bisnis.'),
                                        )
                                      ],
                                    ),
                                  );
                                } else if (index == 3) {
                                  // ShowModalBottomSheet Languages
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) => Column(
                                      children: [
                                        Container(
                                          height: 180,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(20),
                                            ),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/be_smart_logo.png'),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                              'User yang membutuhkan Translator Bahasa Inggris.'),
                                        )
                                      ],
                                    ),
                                  );
                                }
                              },
                              child: Card(
                                elevation: 4.0,
                                color: Colors.black,
                                // margin: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      index == 0
                                          ? 'assets/images/be_smart_logo.png'
                                          : index == 1
                                              ? 'assets/images/be_smart_logo.png'
                                              : index == 2
                                                  ? 'assets/images/be_smart_logo.png'
                                                  : index == 3
                                                      ? 'assets/images/be_smart_logo.png'
                                                      : 'assets/images/be_smart_logo.png',
                                      width: 110,
                                      height: 110,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomCenter,
                                        decoration: const BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            menuItemsServices[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // Courses
                      const Text(
                        'Courses',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      // Body Grid Courses
                      Container(
                        height: 320,
                        margin: const EdgeInsets.all(4),
                        // color: Colors.amber,
                        padding: const EdgeInsets.all(8),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: menuItems.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                if (index == 0) {
                                  // Navigasi ke Materi Android
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MobileMaterialListScreen(),
                                    ),
                                  );
                                } else if (index == 1) {
                                  // Navigasi ke Materi Web
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const WebMaterialListScreen(),
                                    ),
                                  );
                                } else if (index == 2) {
                                  // Navigasi ke Materi UI/UX
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const UiUxMaterialListScreen(),
                                    ),
                                  );
                                } else if (index == 3) {
                                  // Navigasi ke Materi Languages
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const LanguagesMaterialListScreen(),
                                    ),
                                  );
                                }
                              },
                              child: Card(
                                elevation: 4.0,
                                color: Colors.black,
                                // margin: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      index == 0
                                          ? 'assets/images/be_smart_logo.png'
                                          : index == 1
                                              ? 'assets/images/be_smart_logo.png'
                                              : index == 2
                                                  ? 'assets/images/be_smart_logo.png'
                                                  : index == 3
                                                      ? 'assets/images/be_smart_logo.png'
                                                      : 'assets/images/be_smart_logo.png',
                                      width: 110,
                                      height: 110,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.bottomCenter,
                                        decoration: const BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            menuItems[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      // Article & Information
                      const Text(
                        'Article & Information',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          SizedBox(
                            height: 150,
                            child: Card(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 8, top: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Presiden Jokowi',
                                          style: GoogleFonts.poppins(
                                            fontWeight: bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Pak jokowi tersenyum\nmelihat rakyat indonesia.',
                                            style: GoogleFonts.poppins(
                                              fontWeight: reguler,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      color: Colors.blue,
                                    ),
                                    child: Image.network(
                                      // width: 190,
                                      // height: 190,
                                      'https://www.opinion-internationale.com/wp-content/uploads/2015/03/Jokowi1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Container(
                //   padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
                //   child: GridView.builder(
                //     // physics: const NeverScrollableScrollPhysics(),
                //     itemCount: menuItems.length,
                //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       childAspectRatio: 1.0,
                //     ),

                //     itemBuilder: (BuildContext context, int index) {
                //       return GestureDetector(
                //         onTap: () {
                //           if (index == 0) {
                //           } else if (index == 1) {
                //           } else if (index == 2) {
                //           } else if (index == 3) {}
                //         },
                //         child: Card(
                //           elevation: 4.0,
                //           margin: const EdgeInsets.all(12),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               const SizedBox(
                //                 height: 20,
                //               ),
                //               Image.asset(
                //                 index == 0
                //                     ? 'assets/icons/image.png'
                //                     : index == 1
                //                         ? 'assets/icons/image.png'
                //                         : index == 2
                //                             ? 'assets/icons/image.png'
                //                             : index == 3
                //                                 ? 'assets/icons/image.png'
                //                                 : 'assets/icons/image.png',
                //                 width: 50.0,
                //                 height: 50.0,
                //               ),
                //               const SizedBox(
                //                 height: 12.0,
                //               ),
                //               Container(
                //                 decoration: const BoxDecoration(
                //                   borderRadius: BorderRadius.only(
                //                     bottomLeft: Radius.circular(10),
                //                     bottomRight: Radius.circular(10),
                //                   ),
                //                   color: Color(0xff737373),
                //                 ),
                //                 alignment: Alignment.center,
                //                 width: double.infinity,
                //                 height: 40,
                //                 child: Text(
                //                   menuItems[index],
                //                   textAlign: TextAlign.center,
                //                   style: const TextStyle(
                //                     fontSize: 18.0,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       );
                //     },
                //   ),
                // ),

                // // Information
                // const Text(
                //   'Information',
                //   style: TextStyle(
                //     fontSize: 18.0,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.black,
                //   ),
                // ),

                // Flexible(
                //   flex: 1,
                //   child: ListView.builder(
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemCount: 5,
                //     itemBuilder: (BuildContext context, int index) {
                //       return ListTile(
                //         title: const Text('BeSmart'),
                //         onTap: () {},
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imageCarousel, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.transparent,
        child: Image.asset(
          imageCarousel,
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagesCarousel.length,
        effect: const WormEffect(
          dotWidth: 8,
          dotHeight: 8,
        ),
      );
}
