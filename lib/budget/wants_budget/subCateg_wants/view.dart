import 'package:cashkit/budget/budget_class.dart';
import 'package:cashkit/budget/wants_budget/your_Budget_wants/view.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
class SubcategoryDetailsScreen_wants  extends StatelessWidget {
  final String selectedCategory_wants;
  final Widget selectedimgCategory_wants;
  final String subcategoryName_wants;
  final Image subcategoryimg_wants;
  final double mainCatAmount_wants;
  const SubcategoryDetailsScreen_wants ({Key? key, required this.selectedCategory_wants, required this.selectedimgCategory_wants, required this.subcategoryName_wants, required this.subcategoryimg_wants, required this.mainCatAmount_wants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double subAmount_wants = 0;
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
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 100,
            width: 1000,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: CircleAvatar(
                    child: subcategoryimg_wants,
                    backgroundColor: Color(0xffEFEFEF),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  subcategoryName_wants,
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
                      subAmount_wants= double.tryParse(value) ?? 0;
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
                Budget newBudget_wants = Budget(
                  selectedCategory: selectedCategory_wants,
                  selectedimgCategory: selectedimgCategory_wants,
                  selectedSubcategory: subcategoryName_wants,
                  mainAmount: mainCatAmount_wants,
                  subAmount: subAmount_wants,
                  subCategoryimg: subcategoryimg_wants,
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
    );
  }
}

List<Budget> budgetList_wants = [];