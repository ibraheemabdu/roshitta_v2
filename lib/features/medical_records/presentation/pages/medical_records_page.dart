import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/change_password_successfully/presentation/pages/change_password_successfully_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../core/app_consts.dart';

class MedicalRecordsPage extends StatefulWidget {
  const MedicalRecordsPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<MedicalRecordsPage> {
  CarouselController buttonCarouselController = CarouselController();

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
                      child: Text('Medical Records',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
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
                      hintText: 'Title AR',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      labelStyle: Get.textTheme.headline4,
                    ),
                  ),
                  SizedBox(height: 25,),
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
                      hintText: 'Title EN',
                      focusColor: AppColors.light_green,
                      hoverColor: AppColors.light_green,
                      iconColor: AppColors.light_green,
                      labelStyle: Get.textTheme.headline4,
                    ),
                  ),
                  SizedBox(height: 25,),

                  InkWell(
                      onTap: () {
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          color: AppColors.green
                        ),
                        alignment: Alignment.center,
                        width: Get.width*0.8,
                        height: Get.height*0.055,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Choose File',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      )),

                  SizedBox(height: 25,),
                  InkWell(
                      onTap: () {
                      },
                      child: buildButton('Upload', false))

                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CarouselSlider(
                items: [
                  'assets/images/splash_background.png',
                  'assets/images/logo.png',
                  'assets/images/engin.png']
                    .map<Widget>(
                      (item) => Container(
                    width: Get.width - 110,
                    child: Image.asset(item),
                  ),
                ).toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(

                  onPageChanged: (index, reason) {},
                  autoPlay: true,
                  viewportFraction: 0.5,
                  aspectRatio: 2,
                  initialPage: 2,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
