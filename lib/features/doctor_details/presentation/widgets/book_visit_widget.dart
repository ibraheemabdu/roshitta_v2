import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/doctor_details/presentation/widgets/book_visit_by_day_active.dart';
import 'package:rosheta/features/doctor_details/presentation/widgets/book_visit_by_day_nonactive.dart';

import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../book_visit/presentation/pages/book_visit_page.dart';

class BookVistWidget extends StatefulWidget {
  const BookVistWidget({Key? key}) : super(key: key);

  @override
  State<BookVistWidget> createState() => _BookVistWidgetState();
}

class _BookVistWidgetState extends State<BookVistWidget> {
  List<Year> _list = Year.getYear();
  List<Day> _list2 = Day.getDay();
  late List<DropdownMenuItem<Year>> _dropdownMenuItems;
  late Year _selectedCompany;


  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_list);
    _selectedCompany = _dropdownMenuItems[0].value!;
    super.initState();
  }
  List<DropdownMenuItem<Year>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Year>> items = [];
    for (Year company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }
  onChangeDropdownItem(Year selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Book a Visit',style: TextStyle(
              fontSize: 20
          )),
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Year>(
            value: _selectedCompany,
            items: _dropdownMenuItems,
            underline: Container(),
            icon: Icon(Icons.keyboard_arrow_down),
            onChanged: (value)
            {
              onChangeDropdownItem(value!);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Container(
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _list2.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return   InkWell(
                    onTap: (){
                      setState(() {
                        _list2[index].status  = !_list2[index].status ;

                        for(int i = 0 ; i < _list2.length ; i++)
                          {
                            if(i != index)
                              {
                                _list2[i].status = false ;
                              }
                          }
                      });
                    },
                    child:  _list2[index].status  ?  ActiveBookByDay(
                        _list2[index].day_number , _list2[index].day):
                    NonActiveBookByDay(
                        _list2[index].day_number , _list2[index].day),
                  );
                },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Choose Time'),
              Text('your Time',
                style: TextStyle(
                    color: Colors.grey.shade500
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8,horizontal: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 40,
                    width: 100,
                    child: Center(child: Text('10:00 AM')),
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.light_green,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(
                                color: AppColors.green
                            )
                        ),
                        height: 40,
                        width: 100,
                        child: Center(child: Text('10:00 AM',style: TextStyle(
                            color: AppColors.green,
                            fontWeight: FontWeight.bold
                        ),)),
                      ),
                      Positioned(
                        child: Icon(Icons.check_circle,color: AppColors.green,size: 15),
                        right: 0,
                        top: 0,

                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 40,
                    width: 100,
                    child: Center(child: Text('10:00 AM')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 40,
                    width: 100,
                    child: Center(child: Text('10:00 AM')),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 40,
                    width: 100,
                    child: Center(child: Text('10:00 AM')),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 40,
                    width: 100,
                    child: Center(child: Text('10:00 AM')),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(child: InkWell(
            onTap: () {
              Get.to(BookVisitPage());
            },
            child: buildButton('Book A Visit', false))),
      ],
    );
  }
}





class Day {
  int id;
  String day_number;
  String day ;
  bool status ;

  Day(this.id, this.day_number , this.day, this.status);

  static List<Day> getDay() {
    return <Day>[
      Day(1, '13','We',false),
      Day(2, '14','Th',false),
      Day(3, '15','Fr',false),
      Day(4, '16','Sa',false),
      Day(5, '17','Su',false),
      Day(6, '18','Mo',false),
      Day(7, '19','Tu',false),
      Day(8, '20','Th',false),
      Day(9, '21','Fr',false),
      Day(10, '22','Sa',false),
      Day(11, '23','Su',false),
    ];
  }
}


class Year {
  int id;
  String name;

  Year(this.id, this.name);

  static List<Year> getYear() {
    return <Year>[
      Year(1, 'August,2022'),
      Year(2, 'September,2022'),
      Year(3, 'October,2022'),
      Year(4, 'November,2022'),
    ];
  }
}
