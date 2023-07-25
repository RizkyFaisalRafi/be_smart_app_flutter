import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  String imageUrl;
  String nameProduct;
  String rating;
  String amount;
  String price;

  ProductList(
      this.imageUrl, this.nameProduct, this.rating, this.amount, this.price,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 290,
          decoration: BoxDecoration(
            color: const Color(0xff2C3545),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imageUrl),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameProduct,
                        style: GoogleFonts.montserrat(
                          color: const Color(0xffF8F7FD),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            rating,
                            width: 16,
                            height: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                            height: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                            height: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                            height: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(amount,
                              style: GoogleFonts.montserrat(
                                color: const Color(0xffcfcfcf),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        price,
                        style: GoogleFonts.montserrat(
                          color: const Color(0xffF8F7FD),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
