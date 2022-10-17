import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_consts.dart';
import '../../../start/presentation/pages/start_page.dart';

class UpcomingDetailsWidget extends StatelessWidget {
  const UpcomingDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          width: Get.width,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))

          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Dr.Ahmad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.pink.shade50,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Skin Specialist',style: TextStyle(
                                    fontSize: 11
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('tomorrow',style: TextStyle(
                            fontSize: 12)),
                        SizedBox(height: 5),
                        Text('03:30 pm . 21 Hours',style: TextStyle(
                            fontSize: 12)),
                      ],
                    )


                  ],
                ),
                Divider(thickness: 1),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  AppColors.purple,
                                  AppColors.green,
                                ],
                              )),
                          alignment: Alignment.center,
                          width: Get.width * 0.35,
                          height: Get.height * 0.055,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          )
                      ),
                    ),
                    UnicornOutlineButton(
                      strokeWidth: 1,
                      radius: 10,
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          AppColors.purple,
                          AppColors.green,
                        ],
                      ),
                      child: Text('Reschedule', style: TextStyle(fontSize: 16)),
                      onPressed: () {},
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
