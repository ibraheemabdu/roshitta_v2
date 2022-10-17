import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAQWidget extends StatefulWidget {
  const FAQWidget({Key? key}) : super(key: key);

  @override
  State<FAQWidget> createState() => _FAQWidgetState();
}

class _FAQWidgetState extends State<FAQWidget> {
  bool flag = false ;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: (){
            setState(() {

              flag = !flag ;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20
                  ),
                  child: Text('what are the main symptoms of uterine cancer ? ',
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                flag ? Divider(
                  thickness: 1,
                ):Container(),
                flag ? Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20
                  ),
                  child: Text('Vaginal blood points after menopause Vaginal bleeding not related to the timing of the menstrual cycle feeling pain while urinating pain in the lower abdomen Discomfort and pain during intercourse',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ):Container(),
              ],
            ),
          ),
        ),
      );
  }
}
