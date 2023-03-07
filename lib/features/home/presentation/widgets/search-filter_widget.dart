import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rosheta/features/home/presentation/bottom_sheet/bottom_sheet_public_type.dart';
import 'package:rosheta/features/home/presentation/bottom_sheet/bottom_sheet_speciality.dart';
import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../doctor_list/presentation/pages/doctor_list_page.dart';
import '../../../search_list/presentation/pages/search_list_page.dart';
import '../bottom_sheet/bottom_sheet_contry.dart';

class SearchFilterWidget extends StatefulWidget {
  var data;

  SearchFilterWidget(this.data);

  @override
  State<SearchFilterWidget> createState() => _SearchFilterWidgetState();
}



class PublicType {
  String type_key;
  String type_name;

  PublicType({
    required this.type_key,
    required this.type_name,
  });
}

class Countries {
   int id;
   String country_name;
   List regions;

  Countries({
    required this.id,
    required this.country_name,
    required this.regions,
  });
}

class Specialties {
   int id;
   String specialties_name;

  Specialties({
    required this.id,
    required this.specialties_name,
  });
}

class _SearchFilterWidgetState extends State<SearchFilterWidget> {
  late PublicType _public_types = PublicType(type_key: '', type_name: '');

  late Countries _countries = Countries(id: -1 , country_name: '', regions:[]);

  late Specialties _specialties = Specialties( id: -1, specialties_name: '' );

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          'Find the Nearest Medical Facility',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade100),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (v) {
                    // search = v.toString() ;
                    // _updateSearchTerm(v.toString());
                  },
                  onSaved: (newValue) {},
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.grey.shade700,
                  style: TextStyle(decoration: TextDecoration.none),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.shade700,
                          width: 0,
                          style: BorderStyle.none),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.none),
                    ),
                    focusColor: Colors.grey.shade700,
                    fillColor: Colors.grey.shade200,
                    hintText: 'Search by Name',
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade700),
                    labelStyle: Get.textTheme.headline4,
                    prefixIconColor: Colors.grey.shade700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width / 2 - 30,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    Text('OR'),
                    Container(
                      width: Get.width / 2 - 30,
                      height: 0.5,
                      color: Colors.grey,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) {
                            print(_public_types.type_name.toString());
                            return Container(
                              height: Get.height * 0.5,
                              child: BottomSheetPublicTypeWidget(
                                  widget.data['public_types'],
                                  (p0, p1) => {

                                  setState(() {

                                  _public_types.type_key = p0;
                                  _public_types.type_name = p1;



                                  print(_public_types.type_key);
                                  })
                                      }),
                            );
                          });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.hospital,
                                  color: Colors.grey.shade700,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Public Types',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey.shade700)),
                                    Text('Select Types',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade700)),
                                  ],
                                )
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 35,
                              color: Colors.grey.shade700,
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        _public_types.type_name != '' ?
                        Container(
                            decoration: BoxDecoration(
                                color: AppColors.light_green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16),
                              child: Text(
                                _public_types.type_name,
                                style: TextStyle(fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            )):
                        Container(),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                _public_types.type_key ==
                    'doctors' &&
                    _public_types.type_key  != '' ?
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              builder: (context) {
                                return Container(
                                  height: Get.height * 0.8,
                                  child: BottomSheetSpecialityWidget(
                                      widget.data['all_specialties'], (p0,p1) => {
                                    setState(() {
                                      _specialties.id = p0 ;
                                      _specialties.specialties_name = p1;
                                    })


                                  }),
                                );
                              });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.stethoscope,
                                      color: Colors.grey.shade700,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Speciality',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey.shade700)),
                                        Text('Select Speciality',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey.shade700)),
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 35,
                                  color: Colors.grey.shade700,
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            _specialties.id != -1 ?
                            Container(
                                decoration: BoxDecoration(
                                    color: AppColors.light_green,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 16),
                                  child: Text(
                                    _specialties.specialties_name,
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                )):
                            Container(),


                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ):
                Container(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) {
                            return Container(
                              height: Get.height * 0.5,
                              child: BottomSheetContryWidget(
                                  widget.data['countries'], (p0,p1) => {
                                setState(() {
                                  _countries.id = p0 ;
                                  _countries.country_name = p1;
                                })
                              }),
                            );
                          });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.globe,
                                  color: Colors.grey.shade700,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Country',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey.shade700)),
                                    Text('Select Country',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade700)),
                                  ],
                                )
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 35,
                              color: Colors.grey.shade700,
                            )
                          ],
                        ),

                        SizedBox(height: 10,),
                        _countries.id != -1 ?
                        Container(
                            decoration: BoxDecoration(
                                color: AppColors.light_green,
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16),
                              child: Text(
                                _countries.country_name,
                                style: TextStyle(fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            )):
                        Container(),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      Get.to(SearchList(_public_types,_countries,_specialties));
                    },
                    child: buildButton('Book A Visit', false)),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
