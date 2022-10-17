import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rosheta/features/verification/presentation/pages/verivication_page.dart';
import '../../../../core/app_consts.dart';
import '../../../forgot_password/presentation/pages/forgot_password_page.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String initialCountry = 'JO';
  PhoneNumber number = PhoneNumber(isoCode: 'JO');
  final TextEditingController controller = TextEditingController();

  int val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Text('Sign up',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ))),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                      width: Get.width,
                      child: Text('Are you Patient or Institution ?\nSignup New Account now',style: TextStyle(
                        fontSize: 18,

                      ))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



                  Row(
                    children: [
                      Container(
                        width: (Get.width / 2)  - 50,
                        child: RadioListTile<int>(
                          title: Text("Patient"),
                          value: 1,
                          groupValue: val,
                          activeColor: AppColors.green,
                          onChanged: (value){
                            setState(() {
                              val = value ?? 0;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: (Get.width / 2)  - 50,
                        child: RadioListTile<int>(
                          title: Text("Institution"),
                          value: 2,
                          activeColor: AppColors.green,
                          groupValue: val,
                          onChanged: (value){
                            setState(() {
                              val = value ?? 0;
                            });
                          },
                        ),
                      ),
                    ],
                  ),



                 val == 2 ?  Column(
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
                          hintText: 'Institution Type',
                          focusColor: AppColors.light_green,
                          hoverColor: AppColors.light_green,
                          iconColor: AppColors.light_green,
                          prefixIcon: Icon(
                              Icons.home_work_rounded ,
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
                          hintText: 'Country',
                          focusColor: AppColors.light_green,
                          hoverColor: AppColors.light_green,
                          iconColor: AppColors.light_green,
                          prefixIcon: Icon(
                              Icons.language_sharp ,
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
                          hintText: 'Invitation Code',
                          focusColor: AppColors.light_green,
                          hoverColor: AppColors.light_green,
                          iconColor: AppColors.light_green,
                          prefixIcon: Icon(
                              Icons.code_rounded ,
                              color: AppColors.light_green),
                          labelStyle: Get.textTheme.headline4,
                        ),
                      ),
                      SizedBox(height: 8,),
                    ],
                  ):Container(),
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
                  SizedBox(height: 8,),
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },

                    onInputValidated: (bool value) {
                      print(value);
                    },

                    cursorColor: AppColors.light_green,
                    searchBoxDecoration: InputDecoration(
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
                      hintText: 'Search by contry name or dial code',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      labelStyle: Get.textTheme.headline4,
                    ),
                    inputDecoration: InputDecoration(
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
                      hintText: 'Phone Number',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      labelStyle: Get.textTheme.headline4,
                    ),
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: false,
                    keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true),
                    inputBorder:OutlineInputBorder(
                      borderSide:
                      BorderSide(color: AppColors.light_green, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),


                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
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
                  Center(child: InkWell(
                      onTap: () {
                        Get.to(VerivicationPage());
                      },
                      child: buildButton('Sign Up', false)))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '''Already have an account? ''',
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
            )
          ],
        ),
      ),
    );
  }
}