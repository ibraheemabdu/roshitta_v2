import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rosheta/features/bottom_nav/presentation/pages/bottom_nav_page.dart';

import '../../../../core/app_consts.dart';
import '../../../forgot_password/presentation/pages/forgot_password_page.dart';
import '../../data/datasources/api.dart';
class LogIn extends StatefulWidget {

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {


  final myController_email = TextEditingController();
  final myController_pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isLoading = false ;
  _loginData()
  async{
    setState(() {
      _isLoading = true ;
    });
    var result = await loginData(
        lang: 'en',
        email: myController_email.text,
        password: myController_pass.text,
    );

    setState(() {
      _isLoading = false ;
    });
    if(result['status'] == true)
    {
      Get.offAll(BottomNavPage(0));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Form(
                key: _formKey,
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
                      controller: myController_email,
                      onChanged: (v) async{
                      },
                      onSaved: (newValue) {

                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Field';
                        }
                        return null;
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
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: myController_pass,
                      onChanged: (v) async{
                      },
                      onSaved: (newValue) {

                      },

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Field';
                        }
                        return null;
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
                          if (_formKey.currentState!.validate()) {
                           // _registerData();
                            _loginData();
                          }
                        },
                        child: buildButton('LogIn', _isLoading))
                  ],
                ),
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
