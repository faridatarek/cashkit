import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditQuestionScreen extends StatefulWidget {
  const EditQuestionScreen({Key? key}) : super(key: key);

  @override
  State<EditQuestionScreen> createState() => _EditQuestionScreenState();
}

class _EditQuestionScreenState extends State<EditQuestionScreen> {
  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> dropDownListData = [
      {"title": "BCA", "value": "1"},
      {"title": "MCA", "value": "2"},
      {"title": "B.Tech", "value": "3"},
      {"title": "M.Tech", "value": "4"},
    ];


    String defaultValue = "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEFEFEF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Questions ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 16), children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Which of these do you spend money on ?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12.h,
        ),
        InputDecorator(
          decoration: InputDecoration(
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
            contentPadding: const EdgeInsets.all(10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                isDense: true,
                value: defaultValue,
                isExpanded: true,
                menuMaxHeight: 350,
                items: [
                  const DropdownMenuItem(
                      child: Text(
                        "Select Course",
                      ),
                      value: ""),
                  ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                    return DropdownMenuItem(
                        child: Text(data['title']), value: data['value']);
                  }).toList(),
                ],
                onChanged: (value) {
                  print("selected Value $value");
                  setState(() {
                    defaultValue = value ?? ""; // If value is null, assign an empty string
                  });
                }),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              if ( defaultValue == "") {
                print("Please select a course");
              } else {
                print("user selected course $defaultValue");
              }
            },
            child: const Text("Generate"))
      ]),
    );
  }
}
