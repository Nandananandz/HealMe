import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 20),
                  Spacer(),
                  Icon(Icons.notifications),
                  SizedBox(width: 16.0),
                ],
              ),
            ),
            
            SizedBox(height: 35,),
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30, // Example: 30 days in the calendar
                itemBuilder: (context, index) {
                  DateTime date = DateTime.now().add(Duration(days: index));
                  String day = DateFormat.E().format(date); // Day of the week
                  String formattedDate = DateFormat.d().format(date); // Date of the month
                  return Container(
                    width: 60.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    color: Color.fromARGB(255, 191, 235, 244),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(day, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(formattedDate),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 60.0), // Add some space between date selection and journal entry

            Stack(
              children: [
                Container(
                  height: 50.h,
                  width: 86.w,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(236, 225, 226, 192),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write your journal here...',
                    ),
                    maxLines: null, // Allow the text field to expand vertically
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  left: 130,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        // Add your submit logic here
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color:Color.fromARGB(236, 225, 226, 192),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}