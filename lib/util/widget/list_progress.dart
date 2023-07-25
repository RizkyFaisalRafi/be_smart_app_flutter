import 'package:be_smart_app/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../presentation/page/contents_of_mobile_material/content_mobile_material.dart';

class ListProgress extends StatelessWidget {
  const ListProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ContentMobileMaterial(),
        ),
      ),
      child: Card(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(4),
                // color: Colors.amber,
                child: Image.asset(
                  'assets/images/be_smart_logo.png',
                  // 'assets/images/icon_calldev.png', //
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: 106,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Pengembangan Aplikasi Android'),
                    const SizedBox(
                      height: 15,
                    ),
                    LinearPercentIndicator(
                      alignment: MainAxisAlignment.start,
                      barRadius: const Radius.circular(4),
                      // linearStrokeCap: LinearStrokeCap.roundAll,
                      animation: true,
                      animationDuration: 1000,
                      width: 170.0,
                      lineHeight: 12.0,
                      percent: 0.5,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.green[600],
                      trailing: Text(
                        '50%',
                        style: TextStyle(
                            color: Colors.blue[900], fontWeight: bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
