import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/app_consts.dart';

class AccordionWidget extends StatelessWidget {
  var data;

  AccordionWidget(this.data);

  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  final _headerStyle = const TextStyle(
      color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600);

  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Accordion(
          maxOpenSections: 1,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          disableScrolling: true,
          children: [
            AccordionSection(
              isOpen: false,
              headerBorderRadius: 0,
              leftIcon: FaIcon(
                FontAwesomeIcons.circleInfo,
              ),
              headerBackgroundColor: Colors.grey.shade200,
              headerBackgroundColorOpened: AppColors.light_green,
              paddingBetweenClosedSections: 0,
              header: Text('Information', style: _headerStyle),
              content: Text(data['institution_description'].toString(), style: _contentStyle),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              rightIcon: Icon(Icons.keyboard_arrow_down),
            ),
            AccordionSection(
              isOpen: false,
              headerBorderRadius: 0,
              leftIcon: FaIcon(
                FontAwesomeIcons.stethoscope,
              ),
              headerBackgroundColor: Colors.grey.shade200,
              headerBackgroundColorOpened: AppColors.light_green,
              paddingBetweenClosedSections: 0,
              header: Text('Specialties', style: _headerStyle),
              content: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data['all_specialities'].length,
                itemBuilder: (context, index) {
                  return Text(data['all_specialities'][index]['spacialty'],
                      style: _contentStyle);
                },
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              rightIcon: Icon(Icons.keyboard_arrow_down),
            ),
            // AccordionSection(
            //   isOpen: true,
            //   headerBorderRadius: 0,
            //   leftIcon: FaIcon(
            //     FontAwesomeIcons.hospitalUser,
            //   ),
            //   headerBackgroundColor: Colors.grey.shade200,
            //   headerBackgroundColorOpened: AppColors.light_green,
            //   paddingBetweenClosedSections: 0,
            //   header: Text('Insurance Companies', style: _headerStyle),
            //   content: Text(_loremIpsum, style: _contentStyle),
            //   contentHorizontalPadding: 20,
            //   contentBorderWidth: 1,
            //   rightIcon: Icon(Icons.keyboard_arrow_down),
            // ),
            AccordionSection(
              isOpen: false,
              headerBorderRadius: 0,
              leftIcon: FaIcon(
                FontAwesomeIcons.certificate,
              ),
              headerBackgroundColor: Colors.grey.shade200,
              headerBackgroundColorOpened: AppColors.light_green,
              paddingBetweenClosedSections: 0,
              header: Text('Certificates', style: _headerStyle),
              content: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data['certificates'].length,
                itemBuilder: (context, index) {
                  return Text('- ' + data['certificates'][index]['name'].toString(),
                      style: _contentStyle);
                },
              ),
              contentHorizontalPadding: 20,
              rightIcon: Icon(Icons.keyboard_arrow_down),
              contentBorderWidth: 1,
            ),
            AccordionSection(
              isOpen: false,
              headerBorderRadius: 0,
              leftIcon: FaIcon(
                FontAwesomeIcons.handHoldingDollar,
              ),
              headerBackgroundColor: Colors.grey.shade200,
              headerBackgroundColorOpened: AppColors.light_green,
              paddingBetweenClosedSections: 0,
              header: Text('Consultant Fees', style: _headerStyle),
              content: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data['consultants'].length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(data['consultants'][index]['name'].toString(),
                          style: _contentStyle),
                      Text(data['consultants'][index]['consultant_fees'].toString(),
                          style: _contentStyle),
                    ],
                  );
                },
              ),
              contentHorizontalPadding: 20,
              rightIcon: Icon(Icons.keyboard_arrow_down),
              contentBorderWidth: 1,
            ),
          ],
        ),
      ],
    );
  }
}
