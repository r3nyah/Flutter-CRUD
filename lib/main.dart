import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme : ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    accentColor: Colors.cyan
  ),
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String studentName,studentID,studyProgramID;
  late double studentGPA;

  getStudentName(name){
    this.studentName = name;
  }
  getStudentID(id){
    this.studentID = id;
  }
  getStudyProgramID(programID){
    this.studyProgramID = programID;
  }
  getStudentGPA(gpa){
    this.studentGPA = double.parse(gpa);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter College'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2.0)
                    ),
                  ),
                  onChanged: (String name){
                    getStudentName(name);
                  }
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Student ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2.0)
                    ),
                  ),
                  onChanged: (String id){
                    getStudentID(id);
                  }
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Study Program ID",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2.0)
                    ),
                  ),
                  onChanged: (String programID){
                    getStudyProgramID(programID);
                  }
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "GPA",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2.0)
                    ),
                  ),
                  onChanged: (String gpa){
                    getStudentGPA(gpa);
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
