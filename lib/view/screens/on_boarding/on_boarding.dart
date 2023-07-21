import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../util/theme.dart';
import '../sign_in/sign_in_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      bodyPadding: EdgeInsets.all(16.0),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        // Screen 1
        PageViewModel(
          titleWidget: Text(
            'Selamat Bergabung!',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Selamat Datang BeSmarter, Aplikasi Pembelajaran dan Service terbaik.',
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: reguler,
              color: const Color(0xff666666),
            ),
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'assets/images/be_smart_logo.png',
            width: 350,
            height: 250,
          ),
          decoration: pageDecoration.copyWith(
            imageFlex: 10,
            bodyFlex: 10,
            safeArea: 0,
            contentMargin: const EdgeInsets.all(25),
          ),
        ),

        // Screen 2
        PageViewModel(
          titleWidget: Text(
            'Learning',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Terdapat 4 alur belajar diantaranya Android, Website, UI/UX dan Bahasa.',
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: reguler,
              color: const Color(0xff666666),
            ),
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'assets/images/be_smart_logo.png',
            width: 350,
            height: 250,
          ),
          decoration: pageDecoration.copyWith(
            imageFlex: 10,
            bodyFlex: 10,
            safeArea: 0,
            contentMargin: const EdgeInsets.all(25),
          ),
        ),

        // Screen 3
        PageViewModel(
          titleWidget: Text(
            'Service',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Pelayanan jasa pembuatan Aplikasi, Website, UI/UX yang mudah dan cepat.',
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: reguler,
              color: const Color(0xff666666),
            ),
            textAlign: TextAlign.center,
          ),
          image: Image.asset(
            'assets/images/be_smart_logo.png',
            width: 350,
            height: 250,
          ),
          decoration: pageDecoration.copyWith(
            imageFlex: 10,
            bodyFlex: 6,
            footerFlex: 4,
            safeArea: 0,
            contentMargin: const EdgeInsets.all(25),
          ),
          footer: Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              width: 200,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignInScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0XFF004AAD),
                    width: 2.0,
                  ),
                  backgroundColor: const Color(0XFF004AAD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: reguler,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const SignInScreen(),
          ),
        );
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: false,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: Image.asset('assets/images/skip.png'),
      next: Image.asset('assets/images/next.png'),
      dotsDecorator: DotsDecorator(
        size: const Size(10, 10),
        color: greyColor,
        activeColor: const Color(0XFF004AAD),
        activeSize: const Size(20, 10),
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
