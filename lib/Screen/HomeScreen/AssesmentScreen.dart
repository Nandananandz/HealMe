import 'package:flutter/material.dart';

void main() {
  runApp(MentalAssessmentApp());
}

class MentalAssessmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MentalAssessmentPage(),
    );
  }
}

class MentalAssessmentPage extends StatefulWidget {
  @override
  _MentalAssessmentPageState createState() => _MentalAssessmentPageState();
}

class _MentalAssessmentPageState extends State<MentalAssessmentPage> {
  // Questions list
  List<String> questions = [
    'How often do you feel sad or depressed?',
    'Do you have trouble concentrating?',
    'How often do you feel anxious or nervous?',
    // Add more questions as needed
  ];
 Map<int, String> selectedOptions = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Assessment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please answer the following questions:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
questions[index],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            optionButton(index, 'Never'),
                            optionButton(index, 'Rarely'),
                            optionButton(index, 'Sometimes'),
                            optionButton(index, 'Often'),
                            optionButton(index, 'Always'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
                floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
          // Handle submission of assessment here
          // You can use selectedOptions map to get user's responses
          // For example, you can send the responses to a server or calculate a score
        },
        child: Icon(Icons.send),
      ),
    );
  }

  Widget optionButton(int questionIndex, String option) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedOptions[questionIndex] = option;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (selectedOptions.containsKey(questionIndex) &&
                selectedOptions[questionIndex] == option) {
              return Colors.blue; // Color for selected option
            }
            return Colors.grey.shade300;
            
          },
        ),
 ),
      child: Text(option),
    );

}}