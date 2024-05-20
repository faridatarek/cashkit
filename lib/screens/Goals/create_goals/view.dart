
import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/Goals/all_goals/view.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/screens/nav_bar/view.dart';
import 'package:cashkit/screens/rating/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class Creat_goals extends StatefulWidget {
  const Creat_goals({Key? key}) : super(key: key);

  @override
  State<Creat_goals> createState() => _Creat_goalsState();
}

class _Creat_goalsState extends State<Creat_goals> {
  TextEditingController nameController = TextEditingController();
  TextEditingController budgetController = TextEditingController();
  bool allFieldsFilled = false;
  //______________________________________________//
  CalendarFormat _calendarFormatStart = CalendarFormat.month;
  DateTime _focusedDayStart = DateTime.now();
  DateTime? _selectedDayStart;
  bool _showCalendarStart = false;
  TextEditingController _dateControllerStart = TextEditingController();
  //___________________________________________________________________//
  CalendarFormat _calendarFormatEnd = CalendarFormat.month;
  DateTime _focusedDayEnd = DateTime.now();
  DateTime? _selectedDayEnd;
  bool _showCalendarEnd = false;
  TextEditingController _dateControllerEnd = TextEditingController();
  @override
  void disposeStart() {
    _dateControllerStart.dispose();
    super.dispose();
  }
  void disposeEnd() {
    _dateControllerEnd.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    nameController.addListener(checkFields);
    budgetController.addListener(checkFields);
     _dateControllerStart.addListener(checkFields);
    _dateControllerEnd.addListener(checkFields);
  }
  @override
  void disposeAll() {
    nameController.dispose();
    budgetController.dispose();
    _dateControllerStart.dispose();
    _dateControllerEnd.dispose();
    super.dispose();
  }

  void checkFields() {
    setState(() {
      allFieldsFilled = nameController.text.isNotEmpty &&
          budgetController.text.isNotEmpty && _dateControllerStart.text.isNotEmpty && _dateControllerEnd.text.isNotEmpty  ;
    });
  }

/*  void saveDataAndNavigate(BuildContext context) {
    // Save data to a list or wherever you want
    List<String> data = [
      nameController.text,
      budgetController.text,
      _dateControllerStart.text,
      _dateControllerEnd.text,
    ];
    // Navigate to another screen, passing data if needed
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => All_Goals(),
      ),
    );
  }*/

  void saveDataAndNavigate(BuildContext context) {
    int budget = int.tryParse(budgetController.text) ?? 0;
    if (budget > 100000) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Theme(
            data: ThemeData(

              dialogBackgroundColor: Color(0xffF6F6F6), // Set dialog background color
            ),
            child: AlertDialog(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Set border radius
              ),

              content: Text("The amount of money required to achieve your goal exceeds the amount in the saving box ,you can:",style: TextStyle(fontSize:21,fontWeight: FontWeight.w600)),

              actions: <Widget>[

                Center(
                  child: Container(
                    height: 200,

                    child: Column(

                      children: [
                      Container(

                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child:  Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              CircleAvatar(child: CircleAvatar(radius:7.r,backgroundColor: Colors.white),radius: 9.r,backgroundColor: Colors.black),
                              SizedBox(width:5.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(" Edit Goal",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16.sp)),

                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context); // Close the alert dialog
                                    },
                                    child: Text('Change the amount saved every month.',style: TextStyle(fontWeight: FontWeight.w400,fontSize:12.sp,color: Color(0xff656565))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5,horizontal:8),
                        width:MediaQuery.of(context).size.width.w,
                        height:70.h,

                        decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4), //color of shadow

                              spreadRadius:1, //spread radius
                              blurRadius:10, // blur radius
//changes position of shadow
//first paramerter of offset is left-right
//second parameter is top to down
                            ),
//you can set more BoxShadow() here
                          ],
                        ),),

                        Container(

                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child:  Row(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                CircleAvatar(child: CircleAvatar(radius:7.r,backgroundColor: Colors.white),radius: 9.r,backgroundColor: Colors.black),
                                SizedBox(width:5.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(" Edit saving box",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16.sp)),


                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Rating(),
                                          ),
                                        );
                                      },
                                      child: Text('Increase End Date or decrease budget.',style: TextStyle(fontWeight: FontWeight.w400,fontSize:12.sp,color: Color(0xff656565))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 5,horizontal:8),
                          width:MediaQuery.of(context).size.width.w,
                          height:70.h,

                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4), //color of shadow

                                spreadRadius:1, //spread radius
                                blurRadius:10, // blur radius
//changes position of shadow
//first paramerter of offset is left-right
//second parameter is top to down
                              ),
//you can set more BoxShadow() here
                            ],
                          ),),


                    ],),
                  ),
                )

              ],
            ),
          );
        },
      );
    } else {
      // Save data to a list or wherever you want
      List<String> data = [
        nameController.text,
        budgetController.text,
        _dateControllerStart.text,
        _dateControllerEnd.text,
      ];
      // Navigate to another screen, passing data if needed
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => All_Goals(),
        ),
      );
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Create New Goal",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading: InkWell(
          onTap:  (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>NavScreen ()));
          },
          child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),))),
      body: Padding(
        padding: const EdgeInsets.only(top: 15,right: 13,left: 13),
        child: SingleChildScrollView(
          child: Column(children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder:  OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Color(0xffBDBDBD),
                      width: 1.0,
                    )),
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),

                labelText: "Goal Name",

                border: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(
              height:15.h,
            ),
            TextFormField(
              controller: budgetController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder:  OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Color(0xffBDBDBD),
                      width: 1.0,
                    )),
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),

                labelText: "Budget",

                border: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(
              height:15.h,
            ),

            TextFormField(
              controller: _dateControllerStart,
              readOnly: true,
              onTap: () {
                setState(() {
                  _showCalendarStart = !_showCalendarStart;
                });
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_today,color: Theme.of(context).primaryColor),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder:  OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Color(0xffBDBDBD),
                      width: 1.0,
                    )),
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),

                labelText: "Start date",

                border: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15,top: 15),
              child: Visibility(
                visible: _showCalendarStart,
                child: TableCalendar(
                  calendarFormat: _calendarFormatStart ,
                  focusedDay: _focusedDayStart,
                  firstDay: DateTime(2010),
                  lastDay: DateTime(2040),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDayStart, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDayStart = selectedDay;
                      _focusedDayStart = focusedDay;
                      _dateControllerStart.text = selectedDay.toString();
                      _showCalendarStart = false; // to hide the calendar after selecting a day
                    });
                  },
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(color: Colors.white),
                    headerPadding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.green.shade100,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: _dateControllerEnd,
              readOnly: true,
              onTap: () {
                setState(() {
                  _showCalendarEnd = !_showCalendarEnd;
                });
              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_today,color: Theme.of(context).primaryColor),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder:  OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Color(0xffBDBDBD),
                      width: 1.0,
                    )),
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),

                labelText: "End date",

                border: OutlineInputBorder(


                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Visibility(
                visible: _showCalendarEnd,
                child: TableCalendar(
                  calendarFormat: _calendarFormatEnd,
                  focusedDay: _focusedDayEnd,
                  firstDay: DateTime(2010),
                  lastDay: DateTime(2040),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDayEnd, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDayEnd = selectedDay;
                      _focusedDayEnd = focusedDay;
                      _dateControllerEnd.text = selectedDay.toString();
                      _showCalendarEnd = false; // to hide the calendar after selecting a day
                    });
                  },
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(color: Colors.white),
                    headerPadding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.green.shade100,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(

                onPressed:allFieldsFilled
                    ? () => saveDataAndNavigate(context)
                    : null,
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity.w, 50.h),

                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(10.r),
                    )),
                child: Text(
                  "Create",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700,color: Colors.white),
                ),
              ),
            ),


          ]),
        ),
      ),
    );
  }
}
