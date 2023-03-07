import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PastDetailsWidget extends StatelessWidget {
  var data ;
  PastDetailsWidget(this.data);

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
                            Container(

                                child: Text(data['doctor_name'],
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            width: Get.width / 2.5,
                            ),
                            SizedBox(height: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.pink.shade50,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(data['doctor_specialty'],style: TextStyle(
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
                        Text(data['app_date'],style: TextStyle(
                            fontSize: 12)),
                        SizedBox(height: 5),
                        Text(data['time'],style: TextStyle(
                            fontSize: 12)),
                        Text(data['diff_date'],style: TextStyle(
                            fontSize: 12)),
                      ],
                    )


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
