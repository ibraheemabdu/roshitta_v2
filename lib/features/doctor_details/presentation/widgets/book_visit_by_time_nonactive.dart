import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_consts.dart';


class NonActiveBookByTime extends StatelessWidget {
  String dayNumber ;
  String day ;


  NonActiveBookByTime(this.dayNumber, this.day);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        height: 40,
        width: 100,
        child: Center(child: Text('10:00 AM')),
      );
  }
}
