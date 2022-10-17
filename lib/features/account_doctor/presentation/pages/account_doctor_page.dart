import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/certificates_doctor/presentation/pages/certificates_doctor_page.dart';
import 'package:rosheta/features/change_password/presentation/pages/change_password_page.dart';
import 'package:rosheta/features/consultants_doctor/presentation/pages/consultants_doctor_page.dart';
import 'package:rosheta/features/map_doctor/presentation/pages/map_doctor_page.dart';




class AccountDoctorPage extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                },
                child: Container(
                   height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20),
                    )
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dr.Hilal Abughoush',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('IVF and Infertility'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('jordan / Amman'),
                  buildStarsLarg(5)
                ],
              )
            ],
          ),
          SizedBox(height: 15,),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Edit Profile',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:  () {

                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Appointments',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap: () {
                    Get.to(ChangePasswordPage());
                  },
                  child: Column(
                    children: [

                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Weekly Plan',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:  () {
                    Get.to(CertificatesDoctorPage());
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Certificates',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:  () {
                    Get.to(ConsultantsDoctorPage());
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Consultants',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:  () {
                    Get.to(MapDoctorPage());
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Map',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:  () {

                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Posts',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

                InkWell(
                  onTap:  () {
                    Get.to(ChangePasswordPage());
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Change Password',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        thickness: 1,
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}