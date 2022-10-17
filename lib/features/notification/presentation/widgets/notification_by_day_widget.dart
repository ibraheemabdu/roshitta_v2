import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationByDayWidget extends StatelessWidget {
  const NotificationByDayWidget({Key? key}) : super(key: key);
  final _loremIpsum =
  '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                ),
                                Container(
                                  width: Get.width / 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Reminder for checkup',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                      Text(_loremIpsum,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis,

                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (Get.width / 2) - 160,
                                  child: Text('Just now',
                                      style: TextStyle(
                                          fontSize: 12)),
                                ),
                              ],
                            ),
                            Divider(thickness: 1,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                ),
                                Container(
                                  width: Get.width / 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Reminder for checkup',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                      Text(_loremIpsum,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis,

                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (Get.width / 2) - 160,
                                  child: Text('Just now',
                                      style: TextStyle(
                                          fontSize: 12)),
                                ),
                              ],
                            ),
                            Divider(thickness: 1,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                ),
                                Container(
                                  width: Get.width / 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Reminder for checkup',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                      Text(_loremIpsum,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis,

                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (Get.width / 2) - 160,
                                  child: Text('Just now',
                                      style: TextStyle(
                                          fontSize: 12)),
                                ),
                              ],
                            ),
                            Divider(thickness: 1,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                ),
                                Container(
                                  width: Get.width / 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Reminder for checkup',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                      Text(_loremIpsum,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis,

                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (Get.width / 2) - 160,
                                  child: Text('Just now',
                                      style: TextStyle(
                                          fontSize: 12)),
                                ),
                              ],
                            ),
                            Divider(thickness: 1,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                ),
                                Container(
                                  width: Get.width / 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Reminder for checkup',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15)),
                                      Text(_loremIpsum,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis,

                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (Get.width / 2) - 160,
                                  child: Text('Just now',
                                      style: TextStyle(
                                          fontSize: 12)),
                                ),
                              ],
                            ),
                            Divider(thickness: 1,)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 35,),


      ],
    );
  }
}
