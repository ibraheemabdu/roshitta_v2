import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/appointment/presentation/widgets/upcoming_details_widget.dart';

import '../../../../core/app_consts.dart';
import '../../../start/presentation/pages/start_page.dart';

class UpcomingWidget extends StatelessWidget {
  var data ;


  UpcomingWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Upcoming',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
          SizedBox(height: 15,),
          ListView.builder(
            itemCount: data['data']['comming'].length,
            itemBuilder: (context, index) {
              return UpcomingDetailsWidget(data['data']['comming'][index]);
            },
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
