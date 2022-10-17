import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_consts.dart';


class ActiveBookByTime extends StatelessWidget {
  String dayNumber ;
  String day ;


  ActiveBookByTime(this.dayNumber, this.day);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.light_green,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                  color: AppColors.green
              )
          ),
          height: 40,
          width: 100,
          child: Center(child: Text('10:00 AM',style: TextStyle(
              color: AppColors.green,
              fontWeight: FontWeight.bold
          ),)),
        ),
        Positioned(
          child: Icon(Icons.check_circle,color: AppColors.green,size: 15),
          right: 0,
          top: 0,

        ),
      ],
    );
  }
}
