import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/change_password/presentation/pages/change_password_page.dart';

class ConsultantsDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                  width: Get.width,
                  child: Text('Consultants',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top:30),

              child: Text('Doctor Consultants'),
            ),
            Divider(thickness: 1,),

            SizedBox(height: 8,),
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
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
                  hintText: 'Consaltants Name in Arabic',
                  focusColor: AppColors.light_green,
                  hoverColor: AppColors.light_green,
                  iconColor: AppColors.light_green,
                  labelStyle: Get.textTheme.headline4,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
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
                  hintText: 'Consaltants Name in English',
                  focusColor: AppColors.light_green,
                  hoverColor: AppColors.light_green,
                  iconColor: AppColors.light_green,
                  labelStyle: Get.textTheme.headline4,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
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
                  hintText: 'Fees',
                  focusColor: AppColors.light_green,
                  hoverColor: AppColors.light_green,
                  iconColor: AppColors.light_green,
                  labelStyle: Get.textTheme.headline4,
                ),
              ),
            ),

            SizedBox(height: 16,),
            Center(
              child: buildButton('ADD Consultant', false),
            ),


            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}