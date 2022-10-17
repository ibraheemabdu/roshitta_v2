import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rosheta/features/bottom_nav/presentation/pages/bottom_nav_page.dart';

import '../../../../core/app_consts.dart';
import '../../../forgot_password/presentation/pages/forgot_password_page.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: Get.width,
                height: Get.height / 4 ,
                child: Image.asset('assets/images/login-logo.png')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login',style: TextStyle(
                    fontSize: 25,
                   fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 8,),
                  TextFormField(
                    initialValue: '',
                    onChanged: (v) async{
                    },
                    onSaved: (newValue) {

                    },
                    cursorColor: AppColors.light_green,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.light_green, width: 1.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: AppColors.light_green, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: AppColors.light_green, width: 1.0),
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email OR Phone Number',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      prefixIcon: Icon(
                          Icons.email,
                          color: AppColors.light_green),
                      labelStyle: Get.textTheme.headline4,
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextFormField(
                    initialValue: '',
                    onChanged: (v) async{
                    },
                    onSaved: (newValue) {

                    },
                    cursorColor: AppColors.light_green,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.light_green, width: 1.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: AppColors.light_green, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: AppColors.light_green, width: 1.0),
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      prefixIcon: Icon(
                          Icons.password,
                          color: AppColors.light_green),
                      labelStyle: Get.textTheme.headline4,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Text(
                          '''Forget Password? ''',
                          style: TextStyle(fontSize: 15),
                        ),
                        onTap: () {
                          Get.to(ForgotPasswordPage());
                          },
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                      onTap: (){
                        Get.to(BottomNavPage(0));
                      },
                      child: buildButton('LogIn', false))
                ],
              ),
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'Or Login with',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/images/facebook.svg',
                          color: Colors.blue,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/instagram.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/images/facebook.svg',
                          color: Colors.blue,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '''Don't have account? ''',
                      style: TextStyle(fontSize: 15),
                    ),
                    InkWell(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: AppColors.purple),
                      ),
                    ),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
