
import 'dart:ui';
import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/core/app_consts.dart';
import 'package:rosheta/core/my_widgets.dart';
import 'package:rosheta/features/book_visit/presentation/pages/book_visit_page.dart';
import 'package:rosheta/features/doctor_details/presentation/widgets/accordion_widget.dart';
import 'package:rosheta/features/doctor_details/presentation/widgets/book_visit_widget.dart';
import 'package:rosheta/features/pharmacy_details/presentation/modal_bottom_sheet_widgets/main_bottom_sheet_widget.dart';
import 'package:get/get.dart';

import '../widgets/doctors_information_widget.dart';



class DoctorDetailsPage extends StatefulWidget {
  @override
  _DoctorDetailsPageState createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  final _headerStyle = const TextStyle(
      color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600);

  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
  '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(

                  child: Icon(
                    Icons.arrow_back_ios
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
                Text('Doctor Information',style:TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                )),
                SizedBox(width: 25,)
              ],
            ),
          ),

          DoctorsInformationWidget(),

          AccordionWidget(),


          BookVistWidget(),


          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        height: Get.height * 0.8,
                        child: MainBottomSheetWidget(),

                      );
                    }
                );
              },
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Doctor Review', style: TextStyle(fontSize: 20)),
                        Column(
                          children: [
                            Icon(Icons.keyboard_arrow_up,size: 15),
                            Icon(Icons.keyboard_arrow_down,size: 15,),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Username',style: TextStyle(
                              fontSize: 16
                          )),
                          Text('13 Sep 2022',style: TextStyle(
                              fontSize: 13
                          )),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(_loremIpsum)
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Username',style: TextStyle(
                              fontSize: 16
                          )),
                          Text('13 Sep 2022',style: TextStyle(
                              fontSize: 13
                          )),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(_loremIpsum)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


