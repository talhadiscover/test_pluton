import 'package:flutter/material.dart';
import 'package:untitled2/views/tabbar/screens/home_screen.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home_screeen(),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded,color: Colors.white,),
         centerTitle: true,
          title: const Text('Watch'),
          backgroundColor: Colors.black
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                label: 'Search',
                backgroundColor: Colors.black
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.movie_filter_sharp),
                label: 'Search',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_drop_down_circle),
                label: 'Search',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
                backgroundColor: Colors.black
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 0,
       ),
    );
  }
}
