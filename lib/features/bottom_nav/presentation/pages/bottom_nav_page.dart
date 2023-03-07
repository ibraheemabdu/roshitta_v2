import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../../../../core/app_consts.dart';
import '../../../account/presentation/pages/account_page.dart';
import '../../../appointment/presentation/pages/appointment_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';

class BottomNavPage extends StatefulWidget {
  var _selectedPageIndex = 0;

  BottomNavPage(this._selectedPageIndex);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  late List<Widget> pages;
  late PageController _pageController;

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedPageIndex = index;
      _pageController.jumpToPage(widget._selectedPageIndex);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pages = <Widget>[
      HomePage(),
      SettingsPage(),
      HomePage(),
      AppointmentPage(),
      AccountPage(),
    ];
    _pageController = PageController(initialPage: widget._selectedPageIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {

  return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        activeColor: AppColors.light_green,
        color: Colors.grey,

        onTap: _onItemTapped, items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.settings, title: 'Settings'),
        TabItem(icon: Icons.add, title: 'Upload ',
        ),
        TabItem(icon: Icons.message, title: 'Appointment'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      ),
    );
  }
}
