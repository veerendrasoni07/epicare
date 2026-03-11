import 'dart:io';

import 'package:flutter/material.dart';
import 'package:habitrackerapp/Ai_chatbot/bot_screen.dart';
import 'package:habitrackerapp/pages/history_page.dart';
import 'package:habitrackerapp/pages/profile_page.dart';
import 'package:habitrackerapp/pages/startover.dart';
import 'package:image_picker/image_picker.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  File? image;
  final picker=ImagePicker();

  //Function to pick image from camera.
  Future<void> _pickImageFromCamera() async{
    final pickedFile=await picker.pickImage(source: ImageSource.camera);
    if(pickedFile!=null){
      setState(() {
        image=File(pickedFile.path);
      });
    }
  }

  //Function to pick image from gallery.
  Future<void> _pickImageFromGallery() async{
    final pickedFile=await picker.pickImage(source: ImageSource.gallery);
    if(pickedFile!=null){
      setState(() {
        image=File(pickedFile.path);
      });
    }
  }
  int _selectedindex=0;
  void onItemTapped(int index){
    if(index==_selectedindex){
      return;
    }
    setState(() {
      _selectedindex=index;
    });
    if(index==1){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
    }
    else if(index==2){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
    }
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Dermatology AI",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),

            Text("Upload a photo of your skin condition",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 35.0,right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Take a photo",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                  GestureDetector(
                      onTap: _pickImageFromCamera,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.blue,)
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 35.0,right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Choose from gallery",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                  GestureDetector(
                      onTap: _pickImageFromGallery,
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: Colors.blue,)
                  )
                ],
              ),
            ),
            Divider(
              height: 50,
              indent: 50,
              endIndent: 50,
            ),
            Text("Results and analysis",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container()
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Classification",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Skin Disease",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        Text("Psoriasis",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container()
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Diagnosis",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Confidence: 90%",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
                height: 200,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black,
                        width: 1)
                ),
                child: Column(
                  children: [
                    Text("Disease Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Text("Psoriasis is a chronic skin condition that causes raised, red, scaly patches on the skin. It's an autoimmune disease that occurs when the immune system overreacts, causing skin cells to multiply too quickly. Psoriasis is not contagious. "),
                    )
                  ],
                )
            ),
            SizedBox(height: 10,),

            Container(
                height: 290,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black,
                        width: 1)
                ),
                child: Column(
                  children: [
                    Text("Detected Condition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Eczema - Arms and hands",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                        SizedBox(height: 10,),
                        Text("●Red itchy patches"),
                        Text("●Dry Skin"),
                        Text("●Inflammation")
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Text("Treatment Recommendations:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("●Apply prescribed moisturizing creams"),
                              Text("●Avoid allergens and irritants"),
                              Text("●Keep affected areas clean and dry"),
                              Text("●Use gentle,fragrance-free soap")
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              
            ),


            SizedBox(height: 10,),


            ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context)=> StartoverPage()
                    )
                );
              },
              child: Text("Start over",style: TextStyle(color: Colors.white)),
              style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red)),
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
      floatingActionButton: FloatingActionButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>BotScreen()));},child: Image.asset("images/chatbot.png",fit: BoxFit.fill),backgroundColor: Colors.deepPurple,)
    );
  }
}

