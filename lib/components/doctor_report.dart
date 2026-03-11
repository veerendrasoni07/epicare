import 'package:flutter/material.dart';
class DoctorReport extends StatefulWidget {
  const DoctorReport({super.key});

  @override
  State<DoctorReport> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<DoctorReport> {
  TextEditingController dateController=TextEditingController();
  Future<void> datePicker(BuildContext context) async{
    DateTime? pickedDate=await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    );
    if(pickedDate!=null){
      setState(() {
        dateController.text="${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctors Report",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  GestureDetector(onTap: ()=> Navigator.pop(context),child: Icon(Icons.cancel)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Text("Doctor's Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: TextField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
                ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Text("Diagnosis",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: TextField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Text("Treatment Plan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: TextField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Text("Follow-up Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: TextField(
                controller: dateController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    suffixIcon: Icon(Icons.calendar_month_outlined)
                ),
                onTap: ()=>datePicker(context),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Text("Detailed Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: TextField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
                ),
                maxLines: 4,
              ),
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancel")),
              ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("Save")),
            ],
          ),
        )
      ],
    );
  }
}

