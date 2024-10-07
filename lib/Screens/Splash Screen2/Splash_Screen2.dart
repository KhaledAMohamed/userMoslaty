import 'package:flutter/material.dart';
import 'package:user_moslaty/Widgets/Const.dart';

import '../Splash_Screen3/Splash Screen3.dart';
class Splash_Screen2 extends StatelessWidget {
  const Splash_Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [PColor, SColor],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Image.asset(
                  'Images/buses.png', // تأكد من إضافة الصورة في مجلد assets
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xae8ecae6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'البنود و الأحكام',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'ترحب مواصلاتي بدخولك التطبيق ونسعد بتقديم جميع المعلومات والخدمات ، وفيما يلي الشروط والأحكام القانونية المفروضة على جميع زائري هذا الموقع والمواقع ذات الصلة.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'يشير دخولك على الموقع إلى معرفتك وقبولك بهذه البنود والشروط وموافقتك عليها كاملة وأنه تأكيد منك بالإلتزام بمضمون تلك الشروط الخاصة بمواصلاتي وموقعها الإلكتروني.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const Splash_Screen3();
                          }));
                          // هنا يمكنك إضافة الوظيفة الخاصة بالزر

                        },
                        child: const Text('استمرار'),
                        style: ElevatedButton.styleFrom(
                          primary:SColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 15.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.circle, size: 10, color: Colors.blue.shade800),
                          const SizedBox(width: 5),
                          const Icon(Icons.circle, size: 10, color: Colors.grey),
                          const SizedBox(width: 5),
                          const Icon(Icons.circle, size: 10, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
