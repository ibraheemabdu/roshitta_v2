import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/home/presentation/widgets/doctors_widget.dart';
import 'package:rosheta/features/home/presentation/widgets/search-filter_widget.dart';
import 'package:rosheta/features/notification/presentation/pages/notification_page.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import '../../../../core/side_drawer.dart';
import '../../data/datasources/api.dart';
import '../widgets/category_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {
  final _advancedDrawerController = AdvancedDrawerController();
  var future;
  _getData(lang) async{
    return await getHomeData(lang);
  }

  @override
  Widget build(BuildContext context) {

    future = _getData('en');
    return AdvancedDrawer(
      drawer: SideDrawer(_advancedDrawerController),
      backdropColor: Colors.white,
      controller: _advancedDrawerController,
      disabledGestures: true,
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        drawer:SideDrawer(_advancedDrawerController),
        backgroundColor: Colors.white,
        body: FutureBuilder(
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
                  return ListView.builder(
                    itemCount: data['data'].length,
                    itemBuilder: (context, index) {


                      if(data['data'][index]['display_type'] == 1)
                        {
                          return Column(
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
                                        child: FaIcon(
                                          FontAwesomeIcons.barsStaggered,
                                        ),
                                        onTap: () {
                                          _advancedDrawerController.showDrawer();
                                        },
                                      ),
                                      InkWell(
                                        onTap:(){
                                          Get.to(NotificationPage());
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.bell,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              SearchFilterWidget(data),
                              SizedBox(height: 5,),
                              CategoryWidget(data['data'][index]['bulk']),
                            ],
                          );
                        }
                      else if(data['data'][index]['display_type'] == 2)
                      {
                        return Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            DoctorsWidget(data['data'][index]['bulk']),
                          ],
                        );
                      }
                      else {
                        return Container();
                      }
                    },
                  );
                }
                else {
                  return Center(
                    child: Container(),
                  );
                }
              }
              else
              {
                return Center(
                  child: Container(),
                );
              }
            }
            ),
      ),
    );
  }
}



