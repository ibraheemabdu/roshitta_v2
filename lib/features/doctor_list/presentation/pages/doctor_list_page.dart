import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/doctor_details/presentation/pages/doctor_details_page.dart';
import 'package:http/http.dart' as http;
import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../../core/partial_painter.dart';
import '../../data/datasources/api.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:cached_network_image/cached_network_image.dart';


class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  int currentPage = 1;

  late int totalPages = 0;

  final RefreshController refreshController =
  RefreshController(initialRefresh: true);

  var data ;
  List DoctorList = [];

  Future<bool> _getDoctorData({bool isRefresh = false}) async {


    var result = await getDoctoData('en', currentPage) ;

    if (isRefresh) {
      setState(() {
        data = result['data']['data'] ;
        DoctorList = data ;
      });


    } else {
        setState(() {
          refreshController.loadNoData();
          data = result['data']['data'];
          for(int i = 0 ; i < data.length ; i++)
          {
            DoctorList.add(data[i]) ;
          }
        }
        );
    }

    currentPage++;
    totalPages = result['data']['last_page'];



    return true;


    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                  Text('Doctor List',style:TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  )),
                  SizedBox(width: 25,)
                ],
              ),
            ),
            Container(
              height: Get.height - 135,
              child: SmartRefresher(
                controller: refreshController,
                enablePullUp: true,
                onRefresh: () async {
                  final result = await _getDoctorData(isRefresh: true);
                  if (result) {
                    refreshController.refreshCompleted();
                  } else {
                    refreshController.refreshFailed();
                  }
                },
                onLoading: () async {
                  final result = await _getDoctorData(isRefresh: false);
                  if (result) {
                    refreshController.loadComplete();
                  } else {
                    refreshController.loadFailed();
                  }
                },
                child: ListView.builder(
                  itemCount:DoctorList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(DoctorDetailsPage(DoctorList[index]));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: CustomPaint(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                        DoctorList[index]['image'].toString(),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    painter: PartialPainter(
                                        radius: 10,
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            AppColors.purple,
                                            AppColors.green,
                                          ],
                                        ),
                                        strokeWidth: 3),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: Get.width - 220,
                                      child: Text(
                                        DoctorList[index]['username'],
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(DoctorList[index]['main_specialty_name'].toString()),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.locationDot,
                                          color: Colors.grey.shade700,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: Get.width - 220,
                                          child: Text(DoctorList[index]['address'].toString(),
                                              maxLines: 3,
                                              style: TextStyle(fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    buildStarsLarg(DoctorList[index]['reviews'])
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.more_vert)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class DoctorClass{
  var doctor ;

  DoctorClass({this.doctor} );




  factory DoctorClass.fromjson(Map<String,dynamic> json)
  {
    return DoctorClass(
      doctor : json ,
    );
  }



  Map toJson() =>
      {
      };
}