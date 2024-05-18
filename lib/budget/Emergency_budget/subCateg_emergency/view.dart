import 'package:cashkit/budget/Emergency_budget/your_Budget_emergency/view.dart';
import 'package:cashkit/budget/budget_class.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    //list to filter subcategories based on selected category
    List<Map<String, dynamic>> filteredSubcategories_emergency = subcategories_emergency[selectedCategory_emergency] ?? [];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text("Categories",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
          ,leading:  Icon(Icons.arrow_back_ios,color: Color(0xff292929),)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                    child: CircleAvatar(child: selectedimgCategory_emergency,backgroundColor: Color(0xffEFEFEF),radius: 30),
                  ),
                  SizedBox(width: 15.w,),
                  Text(
                    selectedCategory_emergency,
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
                  itemCount: filteredSubcategories_emergency.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        Container(
                          height: 70.h,
                          decoration: BoxDecoration(  color: Colors.white,borderRadius: BorderRadiusDirectional.circular(10)),

                          child:  Center(
                            child: ListTile(
                              leading:CircleAvatar(child:filteredSubcategories_emergency[index]['image'],backgroundColor: Color(0xffEFEFEF),radius: 30),
                              title: Text(filteredSubcategories_emergency[index]['name'], style: TextStyle(color: Color(0xff292929),fontWeight: FontWeight.w500,fontSize: 18), ),
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

// Subcategory Details Screen for needs //
class SubcategoryDetailsScreen_emergency  extends StatelessWidget {
  final String selectedCategory_emergency;
  final Widget selectedimgCategory_emergency;
  final String subcategoryName_emergency;
  final Image subcategoryimg_emergency;
  final double mainCatAmount_emergency;
  const SubcategoryDetailsScreen_emergency ({Key? key, required this.selectedCategory_emergency, required this.selectedimgCategory_emergency, required this.subcategoryName_emergency, required this.subcategoryimg_emergency, required this.mainCatAmount_emergency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double subAmount_emergency = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Add Budget2",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff292929),
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xff292929)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.white,
            ),
            height: 100,
            width: 1000,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: CircleAvatar(
                    child: subcategoryimg_emergency,
                    backgroundColor: Color(0xffEFEFEF),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 15.w),
                Text(
                  subcategoryName_emergency,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff9B9B9B),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.arrow_forward_ios, size: 25),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 100,
              width: 1000,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Amount",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9B9B9B),
                        fontWeight: FontWeight.w600,
                      ),
                      icon: CircleAvatar(
                        child: Image.asset(
                          "assets/images/amount_icon.png",
                        ),
                        backgroundColor: Color(0xffEFEFEF),
                        radius: 30,
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
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: BTN(
              text: "Save",
              onPrees: () {
                Budget newBudget_emergency = Budget(
                  selectedCategory: selectedCategory_emergency,
                  selectedimgCategory: selectedimgCategory_emergency,
                  selectedSubcategory: subcategoryName_emergency,
                  mainAmount: mainCatAmount_emergency,
                  subAmount: subAmount_emergency,
                  subCategoryimg: subcategoryimg_emergency,
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
    );
  }
}

List<Budget> budgetList_emergency = [];