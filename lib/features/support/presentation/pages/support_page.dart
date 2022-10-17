import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:rosheta/core/my_widgets.dart';

class SupportPage extends StatelessWidget {
  String initialCountry = 'JO';
  PhoneNumber number = PhoneNumber(isoCode: 'JO');
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
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
                Text(
                  'Support',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.abc),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('0790000000',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold
                              ),
                            ),
                            Text('Free Support',
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Icon(Icons.abc),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('0790000000',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold
                              ),
                            ),
                            Text('Free Support',
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      height: 30,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Icon(Icons.abc),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('0790000000',
                              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold
                              ),
                            ),
                            Text('Free Support',
                              style: TextStyle(
                                  fontSize: 12
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                    hintText: 'Name',
                    focusColor: AppColors.light_green,
                    hoverColor: AppColors.light_green,
                    iconColor: AppColors.light_green,
                    prefixIcon: Icon(
                        Icons.nest_cam_wired_stand_outlined,
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
                    hintText: 'Subject',
                    focusColor: AppColors.light_green,
                    hoverColor: AppColors.light_green,
                    iconColor: AppColors.light_green,
                    prefixIcon: Icon(
                        Icons.subject,
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
                  initialValue: '',
                  onChanged: (v) async{
                  },
                  onSaved: (newValue) {

                  },
                  cursorColor: AppColors.light_green,
                  maxLines: 7,
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
                    hintText: 'Write your massage Here',
                    focusColor: AppColors.light_green,
                    hoverColor: AppColors.light_green,
                    iconColor: AppColors.light_green,
                    prefixIcon: Icon(
                        Icons.subject,
                        color: AppColors.light_green),
                    labelStyle: Get.textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
          Center(child: buildButton('Send Massage', false)),
          SizedBox(height: 30,),
          Center(child: Text('Follow Us',style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),)),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}