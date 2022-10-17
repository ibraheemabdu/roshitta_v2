import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/change_password/presentation/pages/change_password_page.dart';

import '../../../../core/partial_painter.dart';

class CertificatesDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                  child: Text('Certificates',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top:30),

              child: Text('Doctor Certificates'),
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
                  hintText: 'Certificates Name in Arabic',
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
                  hintText: 'Certificates Name in English',
                  focusColor: AppColors.light_green,
                  hoverColor: AppColors.light_green,
                  iconColor: AppColors.light_green,
                  labelStyle: Get.textTheme.headline4,
                ),
              ),
            ),


            SizedBox(height: 16,),
            Center(
              child: buildButton('ADD Certificates', false),
            ),


            SizedBox(height: 50,),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Container(
                              height: 67,
                              width: Get.width  - 76,
                              child: Center(child: Text('Doctor Certificate Name')),
                            ),
                            Container(
                                width: Get.width  - 76,
                                child: Divider(thickness: 1)),
                            Container(
                              height: 67,
                              width: Get.width  - 76,
                              child: Center(child: Text('Doctor Certificate Name')),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        ),
                                        color: AppColors.purple),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.eye,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color: AppColors.light_purple),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons. close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Container(
                              height: 67,
                              width: Get.width  - 76,
                              child: Center(child: Text('Doctor Certificate Name')),
                            ),
                            Container(
                                width: Get.width  - 76,
                                child: Divider(thickness: 1)),
                            Container(
                              height: 67,
                              width: Get.width  - 76,
                              child: Center(child: Text('Doctor Certificate Name')),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        ),
                                        color: AppColors.purple),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.eye,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color: AppColors.light_purple),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons. close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Container(
                              height: 67,
                              width: Get.width  - 76,
                              child: Center(child: Text('Doctor Certificate Name')),
                            ),
                            Container(
                                width: Get.width  - 76,
                                child: Divider(thickness: 1)),
                            Container(
                              height: 67,
                              width: Get.width  - 76,
                              child: Center(child: Text('Doctor Certificate Name')),
                            ),
                          ],
                        ),
                        Container(
                          width: 60,
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                        ),
                                        color: AppColors.purple),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.eye,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color: AppColors.light_purple),
                                    child: Center(
                                      child: FaIcon(
                                        FontAwesomeIcons. close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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