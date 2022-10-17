import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../doctor_list/presentation/pages/doctor_list_page.dart';


class SearchFilterWidget extends StatefulWidget {
  const SearchFilterWidget({Key? key}) : super(key: key);

  @override
  State<SearchFilterWidget> createState() => _SearchFilterWidgetState();
}
class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}
class _SearchFilterWidgetState extends State<SearchFilterWidget> {


  static List<Animal> _animals = [
    Animal(id: 1, name: "Lion"),
    Animal(id: 2, name: "Flamingo"),
    Animal(id: 3, name: "Hippo"),
    Animal(id: 4, name: "Horse"),
    Animal(id: 5, name: "Tiger"),
    Animal(id: 6, name: "Penguin"),
    Animal(id: 7, name: "Spider"),
    Animal(id: 8, name: "Snake"),
    Animal(id: 9, name: "Bear"),
    Animal(id: 10, name: "Beaver"),
    Animal(id: 11, name: "Cat"),
    Animal(id: 12, name: "Fish"),
    Animal(id: 13, name: "Rabbit"),
    Animal(id: 14, name: "Mouse"),
    Animal(id: 15, name: "Dog"),
    Animal(id: 16, name: "Zebra"),
    Animal(id: 17, name: "Cow"),
    Animal(id: 18, name: "Frog"),
    Animal(id: 19, name: "Blue Jay"),
    Animal(id: 20, name: "Moose"),
    Animal(id: 21, name: "Gecko"),
    Animal(id: 22, name: "Kangaroo"),
    Animal(id: 23, name: "Shark"),
    Animal(id: 24, name: "Crocodile"),
    Animal(id: 25, name: "Owl"),
    Animal(id: 26, name: "Dragonfly"),
    Animal(id: 27, name: "Dolphin"),
  ];

  List<Animal> itemSelected = [] ;





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
            )
        ),
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
                    prefixIcon:
                    Icon(Icons.search, color: Colors.grey.shade700),
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
                Padding (
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (ctx){
                          return MultiSelectDialog<Animal>(
                            items: _animals.map((e) =>
                                MultiSelectItem(e, e.name)).toList(),
                            listType: MultiSelectListType.CHIP,
                            selectedColor: AppColors.green,
                            unselectedColor: AppColors.light_green,
                            selectedItemsTextStyle: TextStyle(
                                color: Colors.black
                            ),
                            onConfirm: (values) {
                              setState(() {
                                itemSelected = values;
                              }
                              );
                            },
                            initialValue: itemSelected,
                          );
                        },
                      );
                    },
                    child: Column(
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
                                            fontSize: 14, color: Colors.grey.shade700)),
                                    Text('Select Speciality',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey.shade700)
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp,
                              size: 35,
                              color: Colors.grey.shade700,
                            )
                          ],
                        ),
                        SizedBox(height:  itemSelected.length != 0 ? 15 : 0),
                        Container(
                          height: itemSelected.length != 0 ? 35 : 0,
                          child: ListView.builder(
                            itemCount: itemSelected.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.light_green,
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(child: Text(itemSelected[index].name)),
                                    ),
                                  ),
                                  SizedBox(width: 5,)
                                ],
                              );
                            },

                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
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
                                      fontSize: 14, color: Colors.grey.shade700)),
                              Text('Select Country',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey.shade700)),
                            ],
                          )
                        ],
                      ),

                      Icon(Icons.keyboard_arrow_down_sharp,
                        size: 35,
                        color: Colors.grey.shade700,
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.locationDot,
                            color: Colors.grey.shade700,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Region',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey.shade700)),
                              Text('Select Region',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey.shade700)),
                            ],
                          )
                        ],
                      ),

                      Icon(Icons.keyboard_arrow_down_sharp,
                        size: 35,
                        color: Colors.grey.shade700,
                      )
                    ],
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
                      Get.to(DoctorList());
                    },
                    child: buildButton('Book A Visit', false)),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
