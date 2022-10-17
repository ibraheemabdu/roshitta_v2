import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/notification/presentation/widgets/notification_by_day_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Icon(
                      Icons.arrow_back_ios
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
                Text('Notifications',style:TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                )),
                SizedBox(width: 25,)
              ],
            ),
          ),

          NotificationByDayWidget(),
          NotificationByDayWidget(),

        ],
      ),
    );
  }
}
