

import 'package:flutter/material.dart';
import 'package:habitrackerapp/pages/history_page.dart';
import 'package:habitrackerapp/pages/home_page.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedindex=2;
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
    else if(index==1){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  SizedBox(height: 100,width: 100,child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image.asset("images/diseasepic.jpg",fit: BoxFit.cover,)),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rahul Sharma",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("Patient ID:P001",style: TextStyle(color: Colors.grey[700],fontSize: 16,fontWeight: FontWeight.bold,),),
                    ],
                  )
                ],
              ),
            ),
            Divider(height: 20,indent: 20,endIndent: 20,),
            Column(
              children: [
                Text("Personal Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Age",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("32 years",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gender",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("Male",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Blood Group",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("B+",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Location",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("Rural\nMadhya\nPradesh",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
            ),
            Column(
              children: [
                Text("Medical History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Allergies",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("Dust\nCertain food\npreservatives",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Genetic Factors",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("Family history\nof skin\nsensitive",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(height: 30,indent:20 ,endIndent: 20,),
            Column(
              children: [
                Text("Physical Metric",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Height",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("172 cm",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Weight",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("72",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BMI",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("23.4",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Skin Type",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                          Text("Sensitive",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(indent: 20,height: 30,endIndent: 20,),
            Column(
              children: [
                Text("Previous Condition",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Eczema",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("Arms and hands - 1/12/2024",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[700]),)
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration:BoxDecoration(color: Colors.amber[500],borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text("medium")),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
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

