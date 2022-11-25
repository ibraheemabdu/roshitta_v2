import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/home/presentation/widgets/single_doctors_widget.dart';
import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../../core/partial_painter.dart';
import '../../../book_visit/presentation/pages/book_visit_page.dart';
import '../../../doctor_details/presentation/pages/doctor_details_page.dart';
import '../../../doctor_list/presentation/pages/doctor_list_page.dart';



class DoctorsWidget extends StatefulWidget {
  var bulk ;

  DoctorsWidget(this.bulk);

  @override
  State<DoctorsWidget> createState() => _DoctorsWidgetState();
}

class _DoctorsWidgetState extends State<DoctorsWidget> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2 , vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.bulk[0]['title'],
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Get.to(DoctorList());
                },
                child: Text(
                  'See all',
                  style: TextStyle(color: AppColors.green, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: AppColors.purple,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.purple.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              onTap: (value) {},
              tabs: [
                Tab(
                  child: Text('All', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('Top Rated',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.bulk[0]['data']['all_doctors'].length,
            itemBuilder: (context, index) {
              return SingleDoctorsWidget(widget.bulk[0]['data']['all_doctors'][index]);
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.bulk[0]['data']['rated_doctors'].length,
            itemBuilder: (context, index) {
              return SingleDoctorsWidget(widget.bulk[0]['data']['rated_doctors'][index]);
            },
          ),
        ][_tabController.index],
      ],
    );
  }
}
