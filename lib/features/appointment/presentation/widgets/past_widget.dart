import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/appointment/presentation/widgets/past_details_widget.dart';

import '../../../../core/app_consts.dart';
import '../../../start/presentation/pages/start_page.dart';

class PastWidget extends StatelessWidget {
  const PastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Past',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
          SizedBox(height: 15,),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),
              PastDetailsWidget(),

            ],
          ),
        ],
      ),
    );
  }
}
