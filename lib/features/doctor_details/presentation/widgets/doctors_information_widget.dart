import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../../core/partial_painter.dart';

class DoctorsInformationWidget extends StatelessWidget {
  var data;


  DoctorsInformationWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 130,
                  width: 130,
                  child: CustomPaint(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
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
            SizedBox(width: 15,),
            Container(
              height: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data['username'],style: TextStyle(
                      fontSize: 20
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['main_specialty_name'].toString()),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Fees:' + data['visit_fees'].toString(),
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  buildStarsLarg(data['reviews'])
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        data['address'].toString() != 'null' ? Column(
          children: [
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
                  Container(
                    width: Get.width - 60,
                    child: Text(data['address'].toString(),

                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ): Container(),

      ],
    );
  }
}
