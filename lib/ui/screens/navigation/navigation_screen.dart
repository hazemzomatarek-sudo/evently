import 'package:evently/ui/screens/navigation/tabs/favourite/favourite_tab.dart';
import 'package:evently/ui/screens/navigation/tabs/home/home_tab.dart';
import 'package:evently/ui/screens/navigation/tabs/profile/profile_tab.dart';
import 'package:evently/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
class  NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var selectedIndex = 0;
var tabs = [HomeTab(),FavouriteTab(),ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: AppColors.primary,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: AppColors.white,),),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBottomNavigation() => Theme(
    data: ThemeData(canvasColor: AppColors.white),
    child: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.Grey2,
        currentIndex: selectedIndex,
        onTap: (newIndex){
          selectedIndex = newIndex;
          setState(() {});
        },
        items: [
      buildBottomNavigationBarItem(Icons.home,"Home"),
      buildBottomNavigationBarItem(Icons.favorite,"Favorite"),
      buildBottomNavigationBarItem(Icons.person,"Profile"),
    ]),
  );

    BottomNavigationBarItem buildBottomNavigationBarItem(
        IconData iconData,
        String label,) =>
        BottomNavigationBarItem(icon: Icon(iconData), label: label);
}
