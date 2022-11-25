import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/doctor_details/presentation/pages/doctor_details_page.dart';

import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../../core/partial_painter.dart';
import '../../data/datasources/api.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  final PagingController<int, SearchProduct> _pagingController =
  PagingController(firstPageKey: 0);

  // Future<void> _fetchPage(int pageKey , lang) async {
  //   try {
  //     final newItems = await getDoctoData(
  //         pageKey,
  //         _searchTerm,arrBrand,arrBrandCar
  //         ,arrCarType,arrTypeSelctions,lang
  //     );
  //
  //     final isLastPage = newItems.length < 10;
  //     if (isLastPage) {
  //       _pagingController.appendLastPage(newItems);
  //     }
  //     else {
  //       final nextPageKey = pageKey + 1;
  //       _pagingController.appendPage(newItems, nextPageKey);
  //     }
  //   }
  //   catch (error) {
  //     _pagingController.error = error;
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 16, top: 8, right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  Text('Doctors',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
            ),
            Container(
              width: Get.width * 0.8,
              child: Center(
                child: TextFormField(
                  initialValue: '',
                  onChanged: (v) async {},
                  onSaved: (newValue) {},
                  cursorColor: AppColors.light_green,
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.light_green, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: AppColors.light_green, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: AppColors.light_green, width: 1.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search..',
                    focusColor: AppColors.light_green,
                    hoverColor: AppColors.light_green,
                    iconColor: AppColors.light_green,
                    prefixIcon:
                        Icon(Icons.search, color: AppColors.light_green),
                    labelStyle: Get.textTheme.headline4,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(DoctorDetailsPage());
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
                                    padding: const EdgeInsets.all(2.0),
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
                                  Text(
                                    'Dr.Hilal Abughoush',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('IVF and Infertility'),
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
                                      Text('Jordan/Amman',
                                          style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  buildStarsLarg(3)
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                  padding: const EdgeInsets.all(2.0),
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
                                Text(
                                  'Dr.Hilal Abughoush',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('IVF and Infertility'),
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
                                    Text('Jordan/Amman',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                buildStarsLarg(3)
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
