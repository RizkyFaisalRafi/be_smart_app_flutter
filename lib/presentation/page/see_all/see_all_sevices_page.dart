import 'package:be_smart_app/presentation/page/detail_service/detail_service.dart';
import 'package:be_smart_app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAllServicesPage extends StatelessWidget {
  const SeeAllServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageService = [
      'assets/images/image_layanan_design.png',
      'assets/images/image_layanan_program.png',
      'assets/images/image_layanan_program.png',
      'assets/images/image_layanan_joki.png',
      'assets/images/image_layanan_joki.png',
    ];

    final List<String> textService = [
      'Design UI/UX',
      'Aplikasi Mobile',
      'Website',
      'Joki Tugas',
      'Joki Skripsi'
    ];
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      appBar: AppBar(
        title: Text(
          'Services',
          style: GoogleFonts.poppins(fontWeight: bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilih Layanan Anda',
              style: GoogleFonts.poppins(fontWeight: bold, fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 460,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: imageService.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0) {
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailService(),
                          ),
                        );
                      } else if (index == 2) {
                      } else if (index == 3) {
                      } else if (index == 4) {}
                    },
                    child: Container(
                      height: 80,
                      child: Card(
                        elevation: 2.0,
                        color: Colors.white,
                        child: Center(
                          child: ListTile(
                            leading: Image.asset(
                              imageService[index],
                              // 'assets/images/image_layanan_design.png',
                            ),
                            title: Text(
                              textService[index],
                              // 'Design UI/UX',
                              style: GoogleFonts.poppins(
                                fontWeight: bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Percayakan tugas-tugas Anda kepada kami, kepuasan Anda menjadi bagian dari prioritas kami.',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      Text(
                        "Hormat kami,\nBeSmart Indonesia Gemilang Team.",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
