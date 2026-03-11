import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.android_rounded,size: 200,),
          Text("Welcome back!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  hintText: "Username"
                ) ,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                obscureText: true,
                decoration:InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  hintText:"Password"
                ) ,
              ),
            ),
          ),

          GestureDetector(child: Text("Forgot password?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
          
          SizedBox(height: 25,),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Sign in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(child: Divider(color: Colors.black,thickness: 1,)),
                SizedBox(width: 10,),
                Text("or continue with",style: TextStyle(color: Colors.black),),
                SizedBox(width: 10,),
                Expanded(child: Divider(color: Colors.black,thickness: 1,)),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("images/applelogo.webp",color: Colors.white,),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset("images/googlelogo.webp"),
              )
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(width: 4,),
              GestureDetector(child: Text("Register now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)))
            ],
          )
        ],
      ),
    );
  }
}
