import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../util/widget/product_list.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SafeArea(
                // Custom SearchBar
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        width: 308,
                        height: 40,
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 11, bottom: 11),
                            fillColor: Colors.grey[600],
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "I'm searching for...",
                            hintStyle: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                            prefixIcon: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const SearchPage()),
                                // );
                              },
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff2C3545),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => CartPage()),
                              // );
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/images/checkout_item.png',
                                width: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Tampilan Hero
            SingleChildScrollView(
              // Untuk Scroll Horizontal
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: const Color(0xff6C5ECF),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrival\nItem Up to 30%',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Color(0xfff8f7fd)),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      )),
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xfff8f7fd),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16.0, left: 17.0),
                              child: Image.asset(
                                'assets/images/product_one_banner.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: const Color(0xff21AE7B),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flash Deal\n12.12 Grab Now',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Color(0xfff8f7fd)),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      )),
                                  child: Text(
                                    'Grab it now',
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xfff8f7fd),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(width: 15,),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 17.0,
                                bottom: 16.0,
                              ),
                              child: Image.asset(
                                'assets/images/girl_icon.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Produknya
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 15, right: 15, bottom: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DetailPage()),
                          // );
                        },
                        child: ProductList(
                          'assets/images/product_one.png',
                          'Nike Air Force X',
                          'assets/images/star.png',
                          '17',
                          'Rp1.650.000',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DetailPage2()),
                          // );
                        },
                        child: ProductList(
                          'assets/images/product_one.png',
                          'Nike Air Force X',
                          'assets/images/star.png',
                          '17',
                          'Rp1.650.000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DetailPage3()),
                          // );
                        },
                        child: ProductList(
                          'assets/images/product_one.png',
                          'Nike Air Force X',
                          'assets/images/star.png',
                          '17',
                          'Rp1.650.000',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DetailPage4()),
                          // );
                        },
                        child: ProductList(
                          'assets/images/product_one.png',
                          'Nike Air Force X',
                          'assets/images/star.png',
                          '17',
                          'Rp1.650.000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DetailPage5()),
                          // );
                        },
                        child: ProductList(
                          'assets/images/product_one.png',
                          'Nike Air Force X',
                          'assets/images/star.png',
                          '17',
                          'Rp1.650.000',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => DetailPage6()),
                          // );
                        },
                        child: ProductList(
                          'assets/images/product_one.png',
                          'Nike Air Force X',
                          'assets/images/star.png',
                          '17',
                          'Rp1.650.000',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    "You've reached the end",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
