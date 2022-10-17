import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_consts.dart';


class NonActiveBookByDay extends StatelessWidget {
  String dayNumber ;
  String day ;


  NonActiveBookByDay(this.dayNumber, this.day);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                  child: Text(dayNumber,style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20
              ),
              )
              ),
            ),
          ),
          Text(day)
        ],
      ),
    );
  }
}
