import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/change_password_successfully/presentation/pages/change_password_successfully_page.dart';

import '../../../../core/app_consts.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Icon(Icons.arrow_back_ios),
                        onTap: () {
                          Get.back();
                        },
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      width: Get.width,
                      child: Text('Forgot Password?',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ))),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                      width: Get.width,
                      child: Text('Please enter your email below to receive your password reset instructions.',style: TextStyle(
                        fontSize: 18,

                      ))),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
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
                      hintText: 'Email',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      prefixIcon: Icon(
                          Icons.email,
                          color: AppColors.light_green),
                      labelStyle: Get.textTheme.headline4,
                    ),
                  ),
                  SizedBox(height: 25,),
                  InkWell(
                      onTap: () {
                        Get.to(ChangePasswordSuccessfullyPage());
                      },
                      child: buildButton('Send Email', false))
                ],
              ),
            ),

            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
