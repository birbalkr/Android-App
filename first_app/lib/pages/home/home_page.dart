import 'package:first_app/pages/home/main_food_page.dart';
import 'package:first_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecterIndex = 0;
  late PersistentTabController _controller;

  List pages = [
    MainFoodPage(),
    Container(
      child: Center(
        child: Text("next"),
      ),
    ),
    Container(
      child: Center(
        child: Text("next page"),
      ),
    ),
    Container(
      child: Center(
        child: Text("next page next"),
      ),
    ),
  ];

  void onTapNav(int index) {
    setState(() {
      _selecterIndex = index;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: pages[_selecterIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //       selectedItemColor: AppColors.mainColor,
  //       unselectedItemColor: Colors.amber,
  //       showSelectedLabels: false,
  //       showUnselectedLabels: false,
  //       currentIndex: _selecterIndex,
  //       unselectedFontSize: 0.0,
  //       selectedFontSize: 0.0 ,
  //       onTap: onTapNav,
  //       items: [
  //         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  //         BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'History'),
  //         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
  //         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
  //       ],
  //     ),
  //   );
  // }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      MainFoodPage(),
      Container(
        child: Center(
          child: Text("next"),
        ),
      ),
      Container(
        child: Center(
          child: Text("next page"),
        ),
      ),
      Container(
        child: Center(
          child: Text("next page next"),
        ),
      ),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.archivebox_fill),
        title: ("Archivebox"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // scrollController: _scrollController2,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        title: ("Cart"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // scrollController: _scrollController2,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_alt_circle_fill),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        // scrollController: _scrollController2,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      // popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.only(top: 8),
      // backgroundColor: Colors.grey.shade900,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property
    );
  }
}
