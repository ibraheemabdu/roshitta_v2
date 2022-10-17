import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/account_doctor/presentation/pages/account_doctor_page.dart';
import 'package:rosheta/features/change_password/presentation/pages/change_password_page.dart';
import 'package:rosheta/features/medical_records/presentation/pages/medical_records_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
                  Get.to(AccountDoctorPage());
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
                  Text('0790000000'),
                ],
              )
            ],
          ),
          SizedBox(height: 15,),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.grey.shade700,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alshmysani , jaber ben hayyn',
                        style: TextStyle(fontSize: 12)),
                    Text('St.bud #65',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
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
                          Text('Reservations',
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
                  onTap: () {
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


                InkWell(
                  onTap:  () {

                    Get.to(MedicalRecordsPage());
                  },
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Medical Record',
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
