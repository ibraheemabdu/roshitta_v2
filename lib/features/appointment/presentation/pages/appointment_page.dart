import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/appointment/presentation/widgets/past_widget.dart';
import 'package:rosheta/features/appointment/presentation/widgets/upcoming_widget.dart';

import '../../../../core/app_consts.dart';
import '../../../start/presentation/pages/start_page.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('My Appointment',style:TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                )),

              ],
            ),
          ),

          UpcomingWidget(),

          SizedBox(height: 35,),

          PastWidget(),
        ],
      ),
    );
  }
}
