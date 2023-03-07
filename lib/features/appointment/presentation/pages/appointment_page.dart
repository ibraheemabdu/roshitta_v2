import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/appointment/presentation/widgets/past_widget.dart';
import 'package:rosheta/features/appointment/presentation/widgets/upcoming_widget.dart';

import '../../../../core/app_consts.dart';
import '../../../start/presentation/pages/start_page.dart';
import '../../data/datasources/api.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  var future;
  _getData(lang) async{
    return await getAppointmentsData(lang);
  }

  @override
  Widget build(BuildContext context) {
    future = _getData('en');
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:
      FutureBuilder(
          future: future,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
            {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center();
              }
              else if (snapshot.hasData) {
                var data = snapshot.data;
                return ListView(
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

                    UpcomingWidget(data),

                    SizedBox(height: 35,),

                    PastWidget(data),
                  ],
                );
              }
              else {
                return Center(
                  child: Container(
                  ),
                );
              }
            } else
            {
              return Center(
                child: Container(),
              );
            }
          }
      ),





    );
  }
}
