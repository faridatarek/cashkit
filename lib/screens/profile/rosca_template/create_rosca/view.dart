import 'package:animate_do/animate_do.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/profile/rosca_template/add_member/view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CreatRosca extends StatefulWidget {
  const CreatRosca({Key? key}) : super(key: key);

  @override
  State<CreatRosca> createState() => _CreatRoscaState();
}

class _CreatRoscaState extends State<CreatRosca> {
  TextEditingController nameController = TextEditingController();
  TextEditingController budgetController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  bool allFieldsFilled = false;
  DateTime? _selectedDateEnd;
  DateTime? _selectedDateStart;
  TextEditingController _dateControllerEnd = TextEditingController();

  TextEditingController _dateControllerStart = TextEditingController();

  Future<void> _selectDateStart(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateStart ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      helpText: 'Select Start Date',
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            brightness: Brightness.light,
            colorScheme: ColorScheme.light(
              primary:
                  Theme.of(context).primaryColor, // Header background color
              onPrimary: Colors.white, // Header text color
              onSurface: Theme.of(context).primaryColor, // Body text color
            ),
            dialogBackgroundColor: Colors.white, // Background color
          ),
          child: child ?? SizedBox.shrink(),
        );
      },
    );
    if (picked != null && picked != _selectedDateStart) {
      setState(() {
        _selectedDateStart = picked;
        _dateControllerStart.text = DateFormat('d MMMM y').format(picked);
      });
    }
  }

  //______________________________________________//
  Future<void> _selectDateEnd(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateEnd ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      helpText: 'Select Start Date',
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            brightness: Brightness.light,
            colorScheme: ColorScheme.light(
              primary:
                  Theme.of(context).primaryColor, // Header background color
              onPrimary: Colors.white, // Header text color
              onSurface: Theme.of(context).primaryColor, // Body text color
            ),
            dialogBackgroundColor: Colors.white, // Background color
          ),
          child: child ?? SizedBox.shrink(),
        );
      },
    );
    if (picked != null && picked != _selectedDateEnd) {
      setState(() {
        _selectedDateEnd = picked;
        _dateControllerEnd.text = DateFormat('d MMMM y').format(picked);
      });
    }
  }

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
    numberController.addListener(checkFields);
    _dateControllerStart.addListener(checkFields);
    _dateControllerEnd.addListener(checkFields);
  }

  @override
  void disposeAll() {
    nameController.dispose();
    budgetController.dispose();
    numberController.dispose();
    _dateControllerStart.dispose();
    _dateControllerEnd.dispose();
    super.dispose();
  }

  void checkFields() {
    setState(() {
      allFieldsFilled = nameController.text.isNotEmpty &&
          budgetController.text.isNotEmpty &&
          numberController.text.isNotEmpty &&
          _dateControllerStart.text.isNotEmpty &&
          _dateControllerEnd.text.isNotEmpty;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Add ROSCA",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Color(0xff292929),
                  fontWeight: FontWeight.w600)),
          leading: InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) =>NavScreen ()));
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff292929),
              ))),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 13, left: 13),
        child: SingleChildScrollView(
          child: Column(children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBDBDBD),
                  width: 1.0,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelText: "ROSCA Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              controller: budgetController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBDBDBD),
                  width: 1.0,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelText: "number of ROSCA members",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              controller: numberController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBDBDBD),
                  width: 1.0,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelText: "Contributed Amount",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              controller: _dateControllerStart,
              readOnly: true,
              onTap: () => _selectDateStart(context),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_today,
                    color: Theme.of(context).primaryColor),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBDBDBD),
                  width: 1.0,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelText: _selectedDateStart == null
                    ? 'Start date'
                    : DateFormat('d MMMM y').format(_selectedDateStart!),
                /*  style: TextStyle(fontSize: 15.sp),*/

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _dateControllerEnd,
              readOnly: true,
              onTap: () => _selectDateEnd(context),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_today,
                    color: Theme.of(context).primaryColor),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffBDBDBD),
                  width: 1.0,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                ),
                labelText: _selectedDateEnd == null
                    ? 'Start date'
                    : DateFormat('d MMMM y').format(_selectedDateEnd!),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r)),
              ),
            ),
            SizedBox(height: 50.h),
            Center(
              child: ElevatedButton(
                onPressed: allFieldsFilled
                    ? () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddMemberScreen(),
                        ))
                    : null,
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity.w, 50.h),
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    )),
                child: Text(
                  "Create",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
