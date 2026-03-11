import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitrackerapp/Ai_chatbot/models/chat_message_model.dart';
import 'package:habitrackerapp/bloc/chat_bloc.dart';
class BotScreen extends StatefulWidget {
  const BotScreen({super.key});

  @override
  State<BotScreen> createState() => _BotScreenState();
}

class _BotScreenState extends State<BotScreen> {
  TextEditingController myController=TextEditingController();
  final ChatBloc chatBloc=ChatBloc();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocConsumer<ChatBloc,ChatState>(
        bloc: chatBloc,
          listener: (context,state){

          },
          builder: (context,state){
            switch (state.runtimeType){
              case ChatSuccessState:
                List<ChatMessageModel> messages=(state as ChatSuccessState).messages;
                return Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/bg_image.jpg",),fit: BoxFit.fill)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          height: 120,
                          child: Row(
                            children: [
                              Text("Epicare",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontFamily: "Schyler",color: Colors.white),),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: ListView.builder(
                          itemCount: messages.length,
                          itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0,right: 10),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Text(
                                  messages[index].parts.first.text,style: TextStyle(fontFamily: "Trajan Pro",fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),)
                          ),
                        );
                      })),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 16),
                        child: Row(
                          children: [
                            Expanded(child: TextField(
                              controller: myController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)
                                  ),hintText: "Enter here...",hintStyle:TextStyle(fontFamily: "DynaPuff") ,
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(50)
                                  )
                              ),
                              style: TextStyle(fontFamily: "DynaPuff",fontWeight: FontWeight.bold),
                            )
                            ),
                            SizedBox(width: 10,),
                            InkWell(
                              onTap: (){
                                if(myController.text.isNotEmpty){
                                  String text=myController.text;
                                  myController.clear();
                                  chatBloc.add(ChatGenerateNewTextMessageEvent(inputMessage:text));
                                }
                              },
                              child: CircleAvatar(
                                radius: 34,
                                backgroundColor: Colors.white,
                                child: Center(
                                  child: Icon(Icons.arrow_upward_outlined,color: Colors.black,size: 36,),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );

            default:

              return SizedBox();
            }
          }
      )
    );
  }
}
