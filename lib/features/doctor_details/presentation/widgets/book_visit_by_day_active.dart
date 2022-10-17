import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_consts.dart';


class ActiveBookByDay extends StatelessWidget {
  String dayNumber ;
  String day ;


  ActiveBookByDay(this.dayNumber, this.day);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: AppColors.light_green,
                      border: Border.all(
                          color: AppColors.green,
                          width: 1
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(child: Text(dayNumber,style: TextStyle(
                      color: AppColors.green,
                      fontSize: 20
                  ),)),
                ),
              ),
              Positioned(
                child: Icon(Icons.check_circle,color: AppColors.green,size: 15),
                right: 0,
                top: 0,

              ),
            ],
          ),
          Text(day)
        ],
      ),
    );
  }
}
