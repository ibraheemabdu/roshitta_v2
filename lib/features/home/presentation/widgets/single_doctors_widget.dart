import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../../core/partial_painter.dart';
import '../../../book_visit/presentation/pages/book_visit_page.dart';
import '../../../doctor_details/presentation/pages/doctor_details_page.dart';

class SingleDoctorsWidget extends StatelessWidget {
  const SingleDoctorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
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
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: CustomPaint(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        //child: Image.network(''),
                      ),
                      painter: PartialPainter(
                          radius: 10,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              AppColors.purple,
                              AppColors.green,
                            ],
                          ),
                          strokeWidth: 3),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.locationDot,
                        color: Colors.grey.shade700,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Jordan/Amman',
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  buildStarsLarg(3)
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(BookVisitPage());
                      },
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                            ),
                            color: AppColors.light_purple),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons. calendarDays,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(DoctorDetailsPage());
                      },
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
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
                ],
              )
            ],
          ),
        ),
      );
  }
}
