import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rosheta/features/verification/presentation/pages/verivication_page.dart';
import '../../../../core/app_consts.dart';
import '../../../bottom_nav/presentation/pages/bottom_nav_page.dart';
import '../../../forgot_password/presentation/pages/forgot_password_page.dart';
import '../../data/datasources/api.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String initialCountry = 'JO';
  PhoneNumber number = PhoneNumber(isoCode: 'JO');
  final TextEditingController controller = TextEditingController();
  final myController_email = TextEditingController();
  final myController_name = TextEditingController();
  final myController_pass = TextEditingController();
  final myController_passconf = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false ;
  String phone = '';
  String country_key = '+962' ;


  _registerData()
  async{
    setState(() {
      _isLoading = true ;
    });
    var result = await registerData(
      lang: 'en',
      email: myController_email.text,
      password: myController_pass.text,
      password_confirmation: myController_passconf.text,
      name: myController_name.text,
      phone: phone,
      country_key:country_key
    );

    setState(() {
      _isLoading = false ;
    });
    if(result['status'] == true)
    {
      Get.offAll(BottomNavPage(0));
    }
  }



  int val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Form(
                key: _formKey,
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
                        // Container(
                        //   width: (Get.width / 2)  - 50,
                        //   child: RadioListTile<int>(
                        //     title: Text("Institution"),
                        //     value: 2,
                        //     activeColor: AppColors.green,
                        //     groupValue: val,
                        //     onChanged: (value){
                        //       setState(() {
                        //         val = value ?? 0;
                        //       });
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                   // val == 2 ?  Column(
                   //    children: [
                   //      TextFormField(
                   //        initialValue: '',
                   //        onChanged: (v) async{
                   //        },
                   //        onSaved: (newValue) {
                   //
                   //        },
                   //        cursorColor: AppColors.light_green,
                   //        maxLines: 1,
                   //        textInputAction: TextInputAction.done,
                   //        decoration: InputDecoration(
                   //          enabledBorder: OutlineInputBorder(
                   //            borderSide:
                   //            BorderSide(color: AppColors.light_green, width: 1.0),
                   //            borderRadius: BorderRadius.circular(15.0),
                   //          ),
                   //          border: OutlineInputBorder(
                   //            borderRadius: BorderRadius.circular(15.0),
                   //            borderSide: BorderSide(color: AppColors.light_green, width: 0.0),
                   //          ),
                   //          focusedBorder: OutlineInputBorder(
                   //
                   //            borderRadius: BorderRadius.circular(15.0),
                   //            borderSide: BorderSide(color: AppColors.light_green, width: 1.0),
                   //          ),
                   //
                   //          filled: true,
                   //          fillColor: Colors.white,
                   //          hintText: 'Institution Type',
                   //          focusColor: AppColors.light_green,
                   //          hoverColor: AppColors.light_green,
                   //          iconColor: AppColors.light_green,
                   //          prefixIcon: Icon(
                   //              Icons.home_work_rounded ,
                   //              color: AppColors.light_green),
                   //          labelStyle: Get.textTheme.headline4,
                   //        ),
                   //      ),
                   //      SizedBox(height: 8,),
                   //      TextFormField(
                   //        initialValue: '',
                   //        onChanged: (v) async{
                   //        },
                   //        onSaved: (newValue) {
                   //
                   //        },
                   //        cursorColor: AppColors.light_green,
                   //        maxLines: 1,
                   //        textInputAction: TextInputAction.done,
                   //        decoration: InputDecoration(
                   //          enabledBorder: OutlineInputBorder(
                   //            borderSide:
                   //            BorderSide(color: AppColors.light_green, width: 1.0),
                   //            borderRadius: BorderRadius.circular(15.0),
                   //          ),
                   //          border: OutlineInputBorder(
                   //            borderRadius: BorderRadius.circular(15.0),
                   //            borderSide: BorderSide(color: AppColors.light_green, width: 0.0),
                   //          ),
                   //          focusedBorder: OutlineInputBorder(
                   //
                   //            borderRadius: BorderRadius.circular(15.0),
                   //            borderSide: BorderSide(color: AppColors.light_green, width: 1.0),
                   //          ),
                   //
                   //          filled: true,
                   //          fillColor: Colors.white,
                   //          hintText: 'Country',
                   //          focusColor: AppColors.light_green,
                   //          hoverColor: AppColors.light_green,
                   //          iconColor: AppColors.light_green,
                   //          prefixIcon: Icon(
                   //              Icons.language_sharp ,
                   //              color: AppColors.light_green),
                   //          labelStyle: Get.textTheme.headline4,
                   //        ),
                   //      ),
                   //      SizedBox(height: 8,),
                   //      TextFormField(
                   //        initialValue: '',
                   //        onChanged: (v) async{
                   //        },
                   //        onSaved: (newValue) {
                   //        },
                   //
                   //        cursorColor: AppColors.light_green,
                   //        maxLines: 1,
                   //        textInputAction: TextInputAction.done,
                   //        decoration: InputDecoration(
                   //          enabledBorder: OutlineInputBorder(
                   //            borderSide:
                   //            BorderSide(color: AppColors.light_green, width: 1.0),
                   //            borderRadius: BorderRadius.circular(15.0),
                   //          ),
                   //          border: OutlineInputBorder(
                   //            borderRadius: BorderRadius.circular(15.0),
                   //            borderSide: BorderSide(color: AppColors.light_green, width: 0.0),
                   //          ),
                   //          focusedBorder: OutlineInputBorder(
                   //
                   //            borderRadius: BorderRadius.circular(15.0),
                   //            borderSide: BorderSide(color: AppColors.light_green, width: 1.0),
                   //          ),
                   //
                   //          filled: true,
                   //          fillColor: Colors.white,
                   //          hintText: 'Invitation Code',
                   //          focusColor: AppColors.light_green,
                   //          hoverColor: AppColors.light_green,
                   //          iconColor: AppColors.light_green,
                   //          prefixIcon: Icon(
                   //              Icons.code_rounded ,
                   //              color: AppColors.light_green),
                   //          labelStyle: Get.textTheme.headline4,
                   //        ),
                   //      ),
                   //      SizedBox(height: 8,),
                   //    ],
                   //  )
                   //     :Container(),
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
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        country_key = number.dialCode.toString();
                        phone = number.phoneNumber.toString();
                      },

                      onInputValidated: (bool value) {
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
                      controller: myController_name,
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
                        hintText: 'Name',
                        focusColor: AppColors.light_green,
                        hoverColor: AppColors.light_green,
                        iconColor: AppColors.light_green,
                        prefixIcon: Icon(
                            Icons.person,
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

                      validator: (value){
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
                    TextFormField(
                      controller: myController_passconf,
                      onChanged: (v) async{
                      },
                      onSaved: (newValue) {
                      },

                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Required Field';
                        }
                        if (value != myController_pass.text) {
                          return ''' Password Don't Match ''';
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
                        hintText: 'Confirm Password',
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
                          if (_formKey.currentState!.validate()
                              && phone != '') {
                            _registerData();
                          }
                        },
                        child: buildButton('Sign Up', _isLoading)))
                  ],
                ),
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