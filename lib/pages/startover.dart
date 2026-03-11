
import 'package:flutter/material.dart';
import 'package:habitrackerapp/components/doctor_report.dart';
import 'package:habitrackerapp/components/symptom_page.dart';
class StartoverPage extends StatefulWidget {
  const StartoverPage({super.key});

  @override
  State<StartoverPage> createState() => _StartoverPageState();
}

class _StartoverPageState extends State<StartoverPage> {

  void _showBottomSheet(){
    showDialog(context: context,
        builder: (context){
          return Dialog(
            child:DoctorReport(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: ()=>Navigator.pop(context),
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Upload your skin photo",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: Text(
                "Take a clear photo of the affected area.The more photos, the better the diagnosis",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Photos",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("Add photos",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),),
                      Text("0/3",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey[600]),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ElevatedButton(onPressed: (){},
                    child: Text("Click here"),
                    style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.purple[100]) ) ,
                  ),
                ),
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            Text("Describe Symptoms",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>SymptomFormScreen())),
                          child: Container(
                            height: 80,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add,size: 30,color: Colors.white,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Column(
                                    children: [
                                      Text("Add",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                      Text("symptoms",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ]
            ),
            SizedBox(height: 15,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Text("Doctor's\nReport",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: ()=>_showBottomSheet(),
                        child: Container(
                          height: 80,
                          width: 120,
                          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add,size: 30,color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: [
                                    Text("Add",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text("report",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("(optional)",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 18),),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                    child: Text("Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                ),
              ),
            ),
            SizedBox(height:20 ,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Why take multiple photos?",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Text("Improve accuracy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 2,),
                  Text("Different angle can give us a clear view of condition.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[700]),),
                  SizedBox(height: 20,),
                  Text("Track progress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 2,),
                  Text("You will be able to see how your condition has changed over time.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[700]),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

