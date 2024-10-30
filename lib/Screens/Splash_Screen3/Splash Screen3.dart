import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/LoginScreen/login_screen.dart';
import 'package:user_moslaty/Widgets/Const.dart';
class Splash_Screen3 extends StatelessWidget {
  const Splash_Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      const SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'مواصلاتي',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'تأسست شركة مصر لتنظيم النقل السياحي عام 2010 وهي شركة تقدم خدمة النقل السياحي بهيئة النقل الجماعي برفاهية و دقة بين المحافظات السياحية و غيرها مثل البحر الأحمر و شرم الشيخ و الأقصر و أسوان و غيرها من المحافظات',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // هنا يمكنك إضافة الوظيفة الخاصة بالزر
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return const LoginScreen();
                              }));
                        },
                        child: const Text('ابدأ'),
                        style: ElevatedButton.styleFrom(
                          // primary: SColor,
                          backgroundColor:SColor ,
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
