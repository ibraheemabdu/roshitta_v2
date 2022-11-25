import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../../core/partial_painter.dart';
import '../../../book_visit/presentation/pages/book_visit_page.dart';
import '../../../doctor_details/presentation/pages/doctor_details_page.dart';

class SingleDoctorsWidget extends StatelessWidget {
  var data ;


  SingleDoctorsWidget(this.data);

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
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                            data['image'].toString(),
                          fit: BoxFit.fill,
                        ),
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
              Container(
                width: Get.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: Get.width - 220,
                      child: Text(data['username'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(data['main_specialty_name'].toString()),
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
                        Container(

                          width: Get.width - 220,
                          child: Text(data['address'].toString(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    buildStarsLarg(data['reviews'])
                  ],
                ),
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
