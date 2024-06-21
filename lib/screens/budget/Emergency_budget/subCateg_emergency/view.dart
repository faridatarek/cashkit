import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/budget/Emergency_budget/your_Budget_emergency/view.dart';
import 'package:cashkit/screens/budget/budget_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SubcategoriesScreen_emergency extends StatelessWidget {
  const SubcategoriesScreen_emergency({Key? key
    , required this.selectedCategory_emergency, required this.selectedimgCategory_emergency,
    required this.subcategories_emergency, required this.mainCatAmount_emergency}) : super(key: key);
  final String selectedCategory_emergency;
  final Widget selectedimgCategory_emergency;
  final Map<String, List<Map<String, dynamic>>> subcategories_emergency;
  final double mainCatAmount_emergency; // Accept mainCatAmount as double



  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> filteredSubcategories_emergency = subcategories_emergency[selectedCategory_emergency] ?? [];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 10.0.w,right: 10.w,top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),  color: Colors.white,),
                height: 65,
                width:1000,
                child: Row(children: [

                  Padding(
                    padding:  EdgeInsets.only(left: 10.0.w),
                    child: CircleAvatar(child: selectedimgCategory_emergency,backgroundColor: Color(0xffEFEFEF),radius: 28.r),
                  ),
                  SizedBox(width: 15.w,),
                  Text(
                    selectedCategory_emergency,
                    style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600),
                  ),


                ]),

              ),
              SizedBox(height: 25.h,),
              Text("Sub Categories",style: TextStyle(fontSize: 16.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)),
              SizedBox(height: 10.h,),
              Container(
                decoration: BoxDecoration(  color: Colors.white,borderRadius: BorderRadiusDirectional.circular(8.r),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), //color of shadow

                      spreadRadius:3,
                      blurRadius:4,
                    ),

                  ], ),
                height: 300.h,
                child: ListView.builder(
                  itemCount: filteredSubcategories_emergency.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        Container(
                          height: 65.h,
                          decoration: BoxDecoration(  color: Colors.white,borderRadius: BorderRadiusDirectional.circular(10)),

                          child:  Center(
                            child: ListTile(
                              leading:CircleAvatar(child:filteredSubcategories_emergency[index]['image'],backgroundColor: Color(0xffEFEFEF),radius: 25.r),
                              title: Text(filteredSubcategories_emergency[index]['name'], style: TextStyle(color: Color(0xff292929),fontWeight: FontWeight.w500,fontSize: 16.sp), ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  SubcategoryDetailsScreen_emergency(subcategoryName_emergency: filteredSubcategories_emergency[index]['name'],subcategoryimg_emergency: filteredSubcategories_emergency[index]['image'],selectedCategory_emergency: selectedCategory_emergency,selectedimgCategory_emergency:  selectedimgCategory_emergency, mainCatAmount_emergency: mainCatAmount_emergency.toDouble()), // Convert mainCatAmount to double
                                  ),
                                );


                              },
                              // Add onTap logic for subcategories if needed
                            ),
                          ),
                        ),
                        Container(color: Color(0xffDCDCDC).withOpacity(0.5),height:0.8.h,width: MediaQuery.of(context).size.width*0.95),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

// Subcategory Details Screen for needs //
class SubcategoryDetailsScreen_emergency  extends StatefulWidget {
  final String selectedCategory_emergency;
  final Widget selectedimgCategory_emergency;
  final String subcategoryName_emergency;
  final Image subcategoryimg_emergency;
  final double mainCatAmount_emergency;
  const SubcategoryDetailsScreen_emergency ({Key? key, required this.selectedCategory_emergency, required this.selectedimgCategory_emergency, required this.subcategoryName_emergency, required this.subcategoryimg_emergency, required this.mainCatAmount_emergency}) : super(key: key);

  @override
  State<SubcategoryDetailsScreen_emergency> createState() => _SubcategoryDetailsScreen_emergencyState();
}

class _SubcategoryDetailsScreen_emergencyState extends State<SubcategoryDetailsScreen_emergency> {
  DateTime? _selectedDate;
  bool _isSwitched = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      helpText: 'Set your deadline',

      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            brightness:Brightness.light ,
            colorScheme: ColorScheme.light(

              primary:Theme.of(context).primaryColor, // Header background color
              onPrimary:Colors.white, // Header text color
              onSurface:Theme.of(context).primaryColor, // Body text color
            ),
            dialogBackgroundColor: Colors.white,
            // Background color
          ),
          child: child ?? SizedBox.shrink(),
        );
      },
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    double subAmount_emergency = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leadingWidth:200.w,
        leading: Padding(
          padding:  EdgeInsets.only(left: 12.w,top: 20.h),
          child: Text(
            "Add Sub Budget",
            style: TextStyle(fontSize: 16.sp, color: Color(0xff292929), fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(right: 10.0,left: 10,bottom: 10,),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),color: Colors.white,),
                height: 220.h,
                child: Padding(
                  padding:  EdgeInsets.only(top: 10.h),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                      ),
                      height: 60.h,
                      width: 370.w,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: CircleAvatar(
                              child: widget.subcategoryimg_emergency,
                              backgroundColor: Color(0xffEFEFEF),
                              radius: 27.r,
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            widget.subcategoryName_emergency,
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Color(0xff9B9B9B),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0.w),
                            child: Icon(Icons.arrow_forward_ios, size: 18,color:  Color(0xffACACAC)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Container(color:Color(0xffDCDCDC).withOpacity(0.5),height:0.8.h,width: MediaQuery.of(context).size.width*0.95), SizedBox(height: 5.h,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 60.h,
                      width: 370.w,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Amount",
                              labelStyle: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0xffBDBDBD),
                                fontWeight: FontWeight.w600,
                              ),
                              icon: CircleAvatar(
                                child: Image.asset(
                                  "assets/images/amount_icon.png",width: 30.w,height: 30.h,
                                ),
                                backgroundColor: Color(0xffEFEFEF),
                                radius: 27.r,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              subAmount_emergency = double.tryParse(value) ?? 0;
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:7.h,),
                    Container(
                      width: 370.w,
                      height: 70.h,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(children: [
                          CircleAvatar(
                            child:Icon(Icons.date_range,size:30,color: Color(0xffACACAC)),
                            backgroundColor: Color(0xffEFEFEF),
                            radius:27.r,
                          ),
                          SizedBox(width: 17.w,),
                          InkWell(
                            onTap: () => _selectDate(context),
                            child: Padding(
                              padding: EdgeInsets.only(top:5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Date',style: TextStyle(fontSize:  15.sp, color:Color(0xffBDBDBD),fontWeight: FontWeight.w600)),
                                  Text(
                                      _selectedDate == null
                                          ? 'DD/MM/YY (Optional)'
                                          : DateFormat('d MMMM y').format(_selectedDate!),
                                      style: TextStyle(fontSize: 12.sp,color:Color(0xffBDBDBD),)),
                                ],),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 3.0),
                            child: Icon(Icons.arrow_forward_ios, size: 18.r,color:  Color(0xffACACAC)),
                          ),
                        ],),
                      )
                    ),
                  ]),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child:   SwitchListTile(

                    title: Text('Repeat this budget',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),),
                    subtitle: Text('Budget will renew automatically.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp,color: Color(0xff656565)),),
                    value: _isSwitched,
                    activeColor:Theme.of(context).primaryColor,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h,),
                width: MediaQuery.of(context).size.width,
                height: 75.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)), // border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4), // color of shadow
                      spreadRadius: 1, // spread radius
                      blurRadius: 10, // blur radius
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BTN(
                text: "Save",
                onPrees: () {
                  Budget newBudget_emergency = Budget(
                    selectedCategory: widget.selectedCategory_emergency,
                    selectedimgCategory: widget.selectedimgCategory_emergency,
                    selectedSubcategory: widget.subcategoryName_emergency,
                    mainAmount: widget.mainCatAmount_emergency,
                    subAmount: subAmount_emergency,
                    subCategoryimg: widget.subcategoryimg_emergency,
                  );
                  budgetList_emergency.add(newBudget_emergency);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YourBudget_emergency(budgetList_emergency: budgetList_emergency),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}