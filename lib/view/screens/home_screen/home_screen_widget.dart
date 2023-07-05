import 'package:be_smart_app/util/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    final List<String> menuItems = ['Android', 'Web', 'UI/UX', 'Languages'];
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Center(
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
                height: 12,
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
                      height: 384,
                      margin: EdgeInsets.all(4),
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
                              } else if (index == 1) {
                              } else if (index == 2) {
                              } else if (index == 3) {}
                            },
                            child: Card(
                              elevation: 4.0,
                              // margin: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    index == 0
                                        ? 'assets/icons/image.png'
                                        : index == 1
                                            ? 'assets/icons/image.png'
                                            : index == 2
                                                ? 'assets/icons/image.png'
                                                : index == 3
                                                    ? 'assets/icons/image.png'
                                                    : 'assets/icons/image.png',
                                    width: 110,
                                    height: 110,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.bottomCenter,
                                      decoration: const BoxDecoration(
                                        color: Colors.grey,
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
                                            fontSize: 18,
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

                    // Information
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
                        Container(
                          height: 150,
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Heading Blog',
                                        style: GoogleFonts.poppins(
                                          fontWeight: bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Sub Heading Blog',
                                        style: GoogleFonts.poppins(
                                          fontWeight: reguler,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  height: 150,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    color: Colors.blue,
                                  ),
                                  child: Image.asset(
                                    width: 170,
                                    height: 150,
                                    'assets/icons/image.png',
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
