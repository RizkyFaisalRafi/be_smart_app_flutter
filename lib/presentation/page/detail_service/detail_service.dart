import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../util/theme.dart';

class DetailService extends StatelessWidget {
  const DetailService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Convert Figma To Flutter Mobile Apps.",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Pembuatan Aplikasi Mobile dengan menggunakan Flutter",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Jika Anda mencari layanan untuk mengembangkan aplikasi android dan IOS menggunakan Flutter, maka Anda datang ke platform yang tepat, karena BeSmart Indonesia Gemilang merupakan team ahli dalam mengembangkan aplikasi android maupun IOS.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Bukan hanya convert Design to Code melainkan integrasi Back End dengan menggunakan Go-Lang. ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Yuk Sobat BeSmart Order Sekarang sesuai kebutuhan Anda!",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Langkah Kerja',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),

                    // Step 1
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. ',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Melakukan pembayaran kemudian konfirmasi pembayaran melalui chat. ',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Step 2
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2. ',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Membahas fitur - fitur dan aplikasi apa yang diinginkan client.',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Step 3
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3. ',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Memverifikasi List Fitur yang telah disepakati client.',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Step 4
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4. ',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Mengerjakan aplikasi/back-end jika diperlukan (Design sudah ada dari client, jika belum ada Anda bisa pesan layanan Design UI/UX).',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Step 5
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5. ',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Memberikan demo aplikasi kepada client dan revisi jika ada fitur dan tampilan yang tidak sesuai/kurang puas dengan ekspektasi client.',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Pilih Paket Anda
                    Text(
                      'Pilih Paket Anda',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),

                    DefaultTabController(
                      length: 4,
                      child: Column(
                        children: [
                          TabBar(
                            isScrollable: true,
                            indicatorColor: Colors.black,
                            tabs: [
                              // 1
                              Tab(
                                child: Text(
                                  'Basic',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // 2
                              Tab(
                                child: Text(
                                  'Standard',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // 3
                              Tab(
                                child: Text(
                                  'Premium',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // 4
                              Tab(
                                child: Text(
                                  'Super',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 240,
                            child: TabBarView(
                              children: [
                                // 1
                                Scaffold(
                                  backgroundColor: Color(0xffEFEFEF),
                                  body: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Basic (100 Rb)'),
                                    ],
                                  ),
                                ),

                                // 2
                                Scaffold(
                                  backgroundColor: Color(0xffEFEFEF),
                                  body: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Basic (100 Rb)'),
                                    ],
                                  ),
                                ),

                                // 3
                                Scaffold(
                                  backgroundColor: Color(0xffEFEFEF),
                                  body: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Basic (100 Rb)'),
                                    ],
                                  ),
                                ),

                                // 4
                                Scaffold(
                                  backgroundColor: Color(0xffEFEFEF),
                                  body: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Basic (100 Rb)'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
