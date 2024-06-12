import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/budget/budget_class.dart';
import 'package:cashkit/screens/budget/wants_budget/your_Budget_wants/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SubcategoriesScreen_wants extends StatelessWidget {
  const SubcategoriesScreen_wants({Key? key
    , required this.selectedCategory_wants, required this.selectedimgCategory_wants,
    required this.subcategories_wants, required this.mainCatAmount_wants}) : super(key: key);
  final String selectedCategory_wants;
  final Widget selectedimgCategory_wants;
  final Map<String, List<Map<String, dynamic>>> subcategories_wants;
  final double mainCatAmount_wants; // Accept mainCatAmount as double



  @override
  Widget build(BuildContext context) {
    //list to filter subcategories based on selected category
    List<Map<String, dynamic>> filteredSubcategories_wants = subcategories_wants[selectedCategory_wants] ?? [];
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0.w,right: 10.w,top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),  color: Colors.white,),
                height: 80,
                width:1000,
                child: Row(children: [

                  Padding(
                    padding:  EdgeInsets.only(left: 10.0.w),
                    child: CircleAvatar(child: selectedimgCategory_wants,backgroundColor: Color(0xffEFEFEF),radius: 30),
                  ),
                  SizedBox(width: 15.w,),
                  Text(
                    selectedCategory_wants,
                    style: TextStyle(fontSize: 20,color: Color(0xff9B9B9B),fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: 10.0.w),
                    child: Icon(Icons.arrow_forward_ios,size: 25),
                  ),

                ]),

              ),
              SizedBox(height: 15.h,),
              Text("SUBCATEGORIES",style: TextStyle(fontSize: 17.sp,color: Color(0xff292929),fontWeight: FontWeight.w600)),
              SizedBox(height: 10.h,),
              Container(
                height: 900,
                child: ListView.builder(
                  itemCount: filteredSubcategories_wants.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        Container(
                          height: 70.h,
                          decoration: BoxDecoration(  color: Colors.white,borderRadius: BorderRadiusDirectional.circular(10)),

                          child:  Center(
                            child: ListTile(
                              leading:CircleAvatar(child:filteredSubcategories_wants[index]['image'],backgroundColor: Color(0xffEFEFEF),radius: 30),
                              title: Text(filteredSubcategories_wants[index]['name'], style: TextStyle(color: Color(0xff292929),fontWeight: FontWeight.w500,fontSize: 18), ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  SubcategoryDetailsScreen_wants(subcategoryName_wants: filteredSubcategories_wants[index]['name'],subcategoryimg_wants: filteredSubcategories_wants[index]['image'],selectedCategory_wants: selectedCategory_wants,selectedimgCategory_wants:  selectedimgCategory_wants, mainCatAmount_wants: mainCatAmount_wants.toDouble()), // Convert mainCatAmount to double
                                  ),
                                );


                              },
                              // Add onTap logic for subcategories if needed
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0.h),
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

// Subcategory Details Screen for wants //
class SubcategoryDetailsScreen_wants  extends StatefulWidget {
  final String selectedCategory_wants;
  final Widget selectedimgCategory_wants;
  final String subcategoryName_wants;
  final Image subcategoryimg_wants;
  final double mainCatAmount_wants;
  const SubcategoryDetailsScreen_wants ({Key? key, required this.selectedCategory_wants, required this.selectedimgCategory_wants, required this.subcategoryName_wants, required this.subcategoryimg_wants, required this.mainCatAmount_wants}) : super(key: key);

  @override
  State<SubcategoryDetailsScreen_wants> createState() => _SubcategoryDetailsScreen_wantsState();
}

class _SubcategoryDetailsScreen_wantsState extends State<SubcategoryDetailsScreen_wants> {
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
    double subAmount_wants = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leadingWidth:200.w,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.w,top: 15.h),
          child: Text(
            "Add Sub Budget",
            style: TextStyle(fontSize: 18.sp, color: Color(0xff292929), fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,height: 208.h,
                child: Column(
                  children: [
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 60.h,
                width: 370.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Padding(
                        padding: EdgeInsets.only(left:3),
                        child: CircleAvatar(
                          child: widget.subcategoryimg_wants,
                          backgroundColor: Color(0xffEFEFEF),
                          radius: 30.r,
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      widget.subcategoryName_wants,
                      style: TextStyle(
                        fontSize:16.sp,
                        color: Color(0xff9B9B9B),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0.w),
                      child: Icon(Icons.arrow_forward_ios, size: 20,color:  Color(0xffACACAC)),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 4.h,),
                Container(color: Color(0xffDCDCDC),height:2.h,width: MediaQuery.of(context).size.width*0.95), SizedBox(height: 5.h,),
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
                        enabled: true,
                        decoration: InputDecoration(
                          labelText: "Amount",
                          labelStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff9B9B9B),
                            fontWeight: FontWeight.w600,
                          ),
                          icon: Padding(
                            padding:  EdgeInsets.only(left:3),
                            child: CircleAvatar(
                              child: Image.asset(
                                "assets/images/amount_icon.png",
                              ),
                              backgroundColor: Color(0xffEFEFEF),
                              radius: 30.r,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          subAmount_wants= double.tryParse(value) ?? 0;
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
                  child: Center(
                    child: ListTile(

                      leading: CircleAvatar(
                        child:Icon(Icons.date_range,size:40,color: Color(0xffACACAC)),
                        backgroundColor: Color(0xffEFEFEF),
                        radius:30.r,
                      ),
                      title: Text('Date',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),

                      subtitle: Text(
                          _selectedDate == null
                              ? 'DD/MM/YY (Optional)'
                              : DateFormat('d MMMM y').format(_selectedDate!),
                          style: TextStyle(fontSize: 12.sp)),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20),
                      onTap: () => _selectDate(context),
                    ),
                  ),
                ),
                  ]
                ),
              ),
            ),


            SizedBox(height:10.h),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child:   SwitchListTile(

                  title: Text('Repeat this budget',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16.sp),),
                  subtitle: Text('Budget will renew automatically.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13.sp,color: Color(0xff656565)),),
                  value: _isSwitched,
                  activeColor:Theme.of(context).primaryColor,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              width: MediaQuery.of(context).size.width,
              height: 80.h,
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

            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: BTN(
                text: "Save",
                onPrees: () {
                  Budget newBudget_wants = Budget(
                    selectedCategory: widget.selectedCategory_wants,
                    selectedimgCategory: widget.selectedimgCategory_wants,
                    selectedSubcategory: widget.subcategoryName_wants,
                    mainAmount: widget.mainCatAmount_wants,
                    subAmount: subAmount_wants,
                    subCategoryimg: widget.subcategoryimg_wants,
                  );
                  budgetList_wants.add(newBudget_wants);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => YourBudget_wants(budgetList_wants: budgetList_wants),
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