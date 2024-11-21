import 'package:flutter/material.dart';
import 'package:user_moslaty/Screens/Splash%20Screen2/Splash_Screen2.dart';
import 'package:user_moslaty/Widgets/Const.dart';

import '../../Models/GetInfoResponse.dart';
import '../../Networks/Api_manager/Api_manager.dart';
class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetInfoResponse?>
      (future: ApiManager.getInfo(4.toString()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return const Center(child: Text("Error fetching Info"));
          } else if (!snapshot.hasData) {
            return const Center(child: Text("No Info available"));
          }
          var info = snapshot.data;
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [SColor, PColor],
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Image.asset(
                      'Images/buses.png', // تأكد من إضافة الصورة في مجلد assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xad8ecae6),
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
                              'الشروط و الخصوصية',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                             Text(
                               // 'المعلومات المطلوبة لإنشاء حساب : فعندما نقوم بإنشاء حساب عبر تطبيقنا نقوم بتقديم عنوان البريد الإلكتروني الخاص بك وتحديد كلمة سر مخصصة للوصول إلى التطبيق. يمكنك أن تقوم بتغيير المعلومات التي تم حفظها في أي وقت. قد نقوم كذلك بجمع معلومات تقنية معينة من جهاز الكمبيوتر الخاص بك وهذه المعلومات التقنية قد تشمل عنوان بروتوكول الإنترنت "IP" الخاص بك، ونظام التشغيل الخاص بجهاز الكمبيوتر، ونوع المتصفح.',
                               info!.data!.data!,
                               style: TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return const Splash_Screen2();
                                    }));
                              },
                              child: const Text('هل توافق على الشروط ؟', style: TextStyle(color: Colors.white,)),
                              style: ElevatedButton.styleFrom(
                                // primary:SColor,
                                backgroundColor: SColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0,
                                  vertical: 15.0,
                                ),
                              ),
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
    );
  }
}
