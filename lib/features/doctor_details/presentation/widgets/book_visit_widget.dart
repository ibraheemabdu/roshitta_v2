import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosheta/features/doctor_details/presentation/widgets/book_visit_by_day_active.dart';
import 'package:rosheta/features/doctor_details/presentation/widgets/book_visit_by_day_nonactive.dart';

import '../../../../core/app_consts.dart';
import '../../../../core/my_widgets.dart';
import '../../../book_visit/presentation/pages/book_visit_page.dart';

class BookVistWidget extends StatefulWidget {
  var data ;
  var doctor_name ;
  var user_id ;


  BookVistWidget(this.data,this.doctor_name , this.user_id);

  @override
  State<BookVistWidget> createState() => _BookVistWidgetState();
}

class _BookVistWidgetState extends State<BookVistWidget> {
  List<Year> _list = [];
  List<Day> _list2 = [];
  late List<DropdownMenuItem<Year>> _dropdownMenuItems;
  late Year _selectedYear;
  String monthSelected = '';
  int dayIndex = 0 ;
  int timeIndex = 0 ;

  @override
  void initState() {
    for(int i = 0 ; i < widget.data['months'].length ; i ++)
      {
        _list.add(
          Year(widget.data['months'][i].toString())
        );
      }

        for(int i = 0 ; i < widget.data['data'].length ; i ++)
        {
          if(widget.data['data'][i]['month'].toString() == widget.data['months'][0])
            {
              _list2.add(
                Day(
                    widget.data['data'][i]['date'].toString(),
                    widget.data['data'][i]['day'].toString(),
                    widget.data['data'][i]['month'].toString(),
                    widget.data['data'][i]['times'],
                    i == 0 ? true : false
                )
              );
            }
        }


    _dropdownMenuItems = buildDropdownMenuItems(_list);
    _selectedYear = _dropdownMenuItems[0].value!;
    monthSelected = widget.data['months'][0] ;
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

  onChangeDropdownItem(Year selectedYear) {
    setState(() {
      _selectedYear = selectedYear;

      monthSelected = selectedYear.name ;
      dayIndex = 0;
      timeIndex = 0 ;
      _list2 = [] ;
      for(int i = 0 ; i < widget.data['data'].length ; i ++)
      {
        if(widget.data['data'][i]['month'].toString() == selectedYear.name)
        {
          _list2.add(
              Day(
                  widget.data['data'][i]['date'].toString(),
                  widget.data['data'][i]['day'].toString(),
                  widget.data['data'][i]['month'].toString(),
                  widget.data['data'][i]['times'],
                  _list2.length == 0 ? true : false
              )
          );
        }
      }
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
            value: _selectedYear,
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
                        timeIndex = 0 ;
                        _list2[index].status  = !_list2[index].status ;
                        dayIndex = index ;

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
                        _list2[index].date , _list2[index].day):
                    NonActiveBookByDay(
                        _list2[index].date , _list2[index].day),
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
          child: GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (Get.width / 100).round(),
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              mainAxisExtent: 40
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _list2[dayIndex].times.length,
            itemBuilder: (context, index) {
             return InkWell(
               onTap: () {
                 setState(() {
                   timeIndex = index;
                 });
               },
               child: timeIndex == index ?

               Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(1.0),
                     child: Container(
                       decoration: BoxDecoration(
                           color: AppColors.light_green,
                           border: Border.all(
                               color: AppColors.green,
                               width: 1
                           ),
                           borderRadius: BorderRadius.all(Radius.circular(15))
                       ),
                       height: 40,
                       width: 100,
                       child: Center(child:
                       Text(_list2[dayIndex].times[index].toString())
                       ),
                     ),
                   ),
                   Positioned(
                     child: Icon(Icons.check_circle,color: AppColors.green,size: 15),
                     right: 0,
                     top: 0,

                   ),
                 ],
               ) :
               Container(
               decoration: BoxDecoration(
                   color: Colors.grey.shade300,
                   borderRadius: BorderRadius.all(Radius.circular(15))
               ),
               height: 40,
               width: 100,
               child: Center(child:
               Text(_list2[dayIndex].times[index].toString())
               ),
             )
             );
            },

          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
            child: InkWell(
                onTap: () {
                  Get.to(BookVisitPage(
                    widget.doctor_name,
                      _list2[dayIndex].date,
                      monthSelected,
                      _list2[dayIndex].times[timeIndex],
                  widget.user_id));
                },
                child: buildButton('Book A Visit', false)
            )
        ),
      ],
    );
  }
}

class Day {
  String day;
  String date ;
  String month ;
  bool status ;
  var times ;

  Day( this.date , this.day, this.month , this.times , this.status);

}

class Times {

  String time;

  Times( this.time );

}

class Year {

  String name;

  Year(this.name);
}
