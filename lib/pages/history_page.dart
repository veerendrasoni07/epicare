
import 'package:flutter/material.dart';
import 'package:habitrackerapp/pages/home_page.dart';
import 'package:habitrackerapp/pages/profile_page.dart';
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int _selectedindex=1;
  void onItemTapped(int index){
    if(index==_selectedindex){
      return;
    }
    setState(() {
      _selectedindex=index;
    });
    if(index==0){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
    else if(index==2){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
    }
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("No history."),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_rounded),
                label: "History"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            )
          ]
      ),
    );
  }
}

