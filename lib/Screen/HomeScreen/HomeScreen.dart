import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healme/Screen/FeelingScreen/AngryScreen.dart';
import 'package:healme/Screen/FeelingScreen/CalmScreen.dart';
import 'package:healme/Screen/FeelingScreen/HappyScreen.dart';
import 'package:healme/Screen/FeelingScreen/SadScreen.dart';
import 'package:healme/Screen/HomeScreen/AssesmentScreen.dart';
import 'package:healme/Screen/HomeScreen/EmotionCard.dart';
import 'package:healme/Screen/HomeScreen/QuoteCard.dart';
import 'package:healme/Screen/HomeScreen/RepeatContainer.dart';
import 'package:healme/Screen/HomeScreen/menuCard.dart';
import 'package:healme/Screen/JournalScreen/JournalScreen.dart';
import 'package:healme/Screen/ProfileScreen/ProfileScreen.dart';
import 'package:http/http.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




 List emotionsList = [["assets/happy.png","Happy"],["assets/angry.png","Angry"],["assets/sad.png","Sad"],["assets/calm.png","Calm"]];



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 6.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              SizedBox(height: 3.h,),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
                    },
                    child: Container(
                     width: 10.w,
                     height: 10.w,
                    
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.w),color: Colors.blueAccent),
                     child: Icon(Icons.person_2,size: 8.w,),
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.notifications),
                  SizedBox(width: 4.w,),
                ],
              ),
              SizedBox(height: 2.h,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Good Afternoon",style: GoogleFonts.epilogue(color:Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w600, ),),
                   Text("Saranya",style: GoogleFonts.epilogue(color:Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w800 ),)
            
                   ],
                 ),
                   SizedBox(height: 2.h,),
                   Text("How are you feeling today?",style: GoogleFonts.epilogue(color:Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w600, ),),
                  SizedBox(height: 3.h,),
                  Row(
                    children: [
                 for  (List data in emotionsList)     InkWell(
                  onTap: () {
                    if(data[1]=="Happy") {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HappyScreen()));
                    }
                   else if(data[1]=="Angry") {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AngryScreen()));
                    }
                   else if(data[1]=="Sad") {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SadScreen()));
                    }
                   else if(data[1]=="Calm") {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalmScreen()));
                    }
                  },
                  
                  
                  child: EmotionCard(assetImage: data[0], buttonText: data[1]))
                 
                 
                      ],
                    ),
                    SizedBox(height: 6.h,),
            Row(
              children: [
                InkWell(
                  onTap: () {
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JournalScreen()));
               
                  },
                  child: Container(width: 42.w,
                          height: 7.h,
                          decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(3.w)),
                          child: Row(
                            children: [
                              SizedBox(width: 4.w,),
                              Icon(Icons.note_add,color:  Colors.grey.shade700,),
                              SizedBox(width: 2.w,),
                              Text("Journal",style: GoogleFonts.epilogue(color: Colors.grey.shade700,fontSize: 12.sp,fontWeight: FontWeight.w500),)
                            ],
                          ),
                       ),
                ),
                      SizedBox(width: 4.w,),
                 
                   
                    InkWell(
                      onTap: () {
                         Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>MentalAssessmentPage ()));
               
                      },
                       child: Container(width: 42.w,
                          height: 7.h,
                          decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(3.w)),
                          child: Row(
                            children: [
                              SizedBox(width: 4.w,),
                              Icon(Icons.assessment,color:  Colors.grey.shade700,),
                              SizedBox(width: 2.w,),
                              Text("Assesment",style: GoogleFonts.epilogue(color: Colors.grey.shade700,fontSize: 12.sp,fontWeight: FontWeight.w500),)
                            ],
                          ),
                       ),
                     ),
                   
                
              ],
            ),
            SizedBox(height: 3.h,)   ,
            QuoteCard(textdata: " It is better to conquer yourself than to win a thousand times ") ,
                     SizedBox(height: 3.h,)   ,
                     RepeatContainer(Headertext: "To-Day", describetext: "Conversation, like certain portions of the anatomy, always runs more smoothly when lubricated....,\n", goto: "Let's chat", ctColor: Colors.blue.shade100)
            //eni ath avidano avashyam ath avide call cheyyuka
           // MenuCard(textValue: "value egane pass cheyyanam", bgColor: Colors.red) // ethrepore change varnne value egane cheyyanam
          ],
            ),
        ),),),);
  }
}