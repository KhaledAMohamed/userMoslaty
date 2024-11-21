import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_moslaty/Provider/AppConfigProvider.dart';
import 'package:user_moslaty/Widgets/toast.dart';

import '../../Networks/Api_manager/Api_manager.dart';
import '../../Widgets/CustomButon.dart';
import '../../Widgets/custom_textField.dart';
import '../Sign_up/sign_up.dart';
import '../home/Home_Page.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = 'LoginScreen';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),


        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children:  [
             const SizedBox(height: 90,),
         //     const Spacer(flex: 1,),
              Center(
                child: Image.asset("Images/AppIcon.jpg",
                height: 96,
                  width: 96,
                ),
              ),
              const Center(
                child: Text('تسجيل دخول',

                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,

                  ),),
              ),
         //     const Spacer(flex: 1,),


              const SizedBox(
                height: 15,

              ),
              const Text("البريد الاكتروني ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black
              ),
              ),

              CustomTextField(
                controller: emailController,
                width: 400,
                height: 45,
                hintText: " ادخل البريد الاكتروني ",
              ),
              const SizedBox(
                height: 10,

              ),
              const Text("كلمة السر",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              CustomTextField(
                controller: passwordController,
                width: 400,
                height: 45,
                hintText: "ادخل الرقم السري" ,
              ),
              const SizedBox(
                height: 15,

              ),
              CustomButon(
                width: 400,
                text: 'تسجيل دخول', color: const Color(0xFA023047),
                colorText: Colors.white,
                ontap:(){
                  login(context);
                } ,
              ),
              const SizedBox(
                height: 15,

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return  Sign_UpPage() ;
                          }));
                    },
                    child: const Text("  إنشاء حساب جديد",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(-580755617)),),
                  ),

                 const  Text("أليس لديك حساب؟ ",
                    style:TextStyle(
                        color: Colors.black
                    )
                    ,),

                ],
              ),
               const Text("أو"),
           //   const Spacer(flex: 1,),
contener(text: " الدخول بواسطة حساب جوجل ",
    imagePath: 'Images/IconGoogle.png'),
              const SizedBox(height: 10,),
              //دا كونتينر انا عامله موجود في فولدر ال ًwidget موجود في فيل custom _TextField

            //  const Spacer(flex: 3,),
            ],
          ),
        ),
      ) ,
    )
    ;
  }

  void login(BuildContext context)async {
   var provider =  Provider.of<AppConfigProvider>(context, listen: false);
    final result = await ApiManager.login(
      emailController.text.trim(),
      passwordController.text.trim(),
    );
    result.fold(
          (error) {
        if(error.status == false){
          toast.showToast(error.message.toString());
        }
        if (error.errors!.email!.isNotEmpty){
          toast.showToast(error.errors!.email.toString());
        }
        if (error.errors!.password!.isNotEmpty){
          toast.showToast(error.errors!.password.toString());
        }
      },
          (response) async {
        toast.showToast(response.message!);
        try {
          final userDataResponse = await ApiManager.userMainData(response.user!.toString());
          if (userDataResponse != null) {
            provider.setUserData(userDataResponse);
            provider.setUserId(response.user!.toString());
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Home_Page();
            }));
          }
        } catch (e) {
          toast.showToast("Failed to fetch user data.");
        }
   },
        // provider.setUserId(response.user!.toString());
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context){
        //       return Home_Page();
        //     }));
    );
  }

}