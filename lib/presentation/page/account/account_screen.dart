import 'package:be_smart_app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../../util/widget/menu_profile.dart';
import '../about_screen/about_screen.dart';
import '../call_dev/call_dev_screen.dart';
import '../portofolio/portofolio_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      AssetImage('assets/images/be_smart_logo.png'),
                ),
              ),

              Text(
                'Rizky Faisal Rafi',
                style: TextStyle(fontWeight: bold, fontSize: 14),
              ),
              Text(
                'rizkyfaisalrafi123@gmail.com',
                style: TextStyle(fontWeight: reguler),
              ),
              Text(
                '089512349871',
                style: TextStyle(fontWeight: reguler),
              ),

              const SizedBox(
                height: 20,
              ),

              // Portofolio
              MenuProfile(
                image: 'assets/images/portofolio.png',
                title: 'Portofolio',
                subTitle: 'Lihat portofolio Anda',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PortofolioScreen()),
                  );
                },
              ),

              // Hubungi Kami
              MenuProfile(
                image: 'assets/images/hubungi_kami.png',
                title: 'Hubungi Kami',
                subTitle: 'Sampaikan kendala, kritik, dan saran Anda',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CallDevScreen()),
                  );
                },
              ),

              // Tentang Aplikasi
              MenuProfile(
                image: 'assets/images/tentang_app.png',
                title: 'Tentang Aplikasi',
                subTitle: 'Lihat informasi lengkap tentang aplikasi',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()),
                  );
                },
              ),

              // Rate Aplikasi
              MenuProfile(
                image: 'assets/images/rate_app.png',
                title: 'Rate Aplikasi',
                subTitle: 'Menilai aplikasi di Google Play Store',
                onTap: () {},
              ),

              // Keluar Akun
              // MenuProfile(
              //   image: 'assets/images/keluar_akun.png',
              //   title: 'Keluar Akun',
              //   subTitle: 'Klik untuk keluar dari akun Anda',
              //   onTap: () {},
              // ),

              const SizedBox(
                height: 110,
              ),

              // Button Hapus AwesomeDialog
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  width: double.infinity,
                  height: 56,
                  child: AnimatedButton(
                    text: "Keluar Akun",
                    // text: AppLocalizations.of(context)!.btnDelete,
                    // color: dangerSecond,
                    color: Colors.red[700],
                    borderRadius: BorderRadius.circular(10),
                    pressEvent: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.warning,
                        animType: AnimType.topSlide,
                        showCloseIcon: true,
                        alignment: Alignment.centerLeft,
                        title: 'Keluar dari Akun BeSmart?',
                        desc:
                            'Jika kamu ingin menggunakan layanan BeSmart kembali, kamu perlu masuk ke akunmu lagi.',
                        // desc: AppLocalizations.of(context)!.subTitleWarning,

                        // Action to perform on cancel and ok buttons
                        btnCancel: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                            backgroundColor: whiteColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            // AppLocalizations.of(context)!.btnCancelled,
                            'Batal',
                            style: TextStyle(color: blackColor),
                          ),
                        ),
                        btnOk: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () async {},
                          child: Text(
                            // AppLocalizations.of(context)!.logOut,
                            'Keluar',
                            style: TextStyle(color: whiteColor),
                          ),
                        ),
                      ).show();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
