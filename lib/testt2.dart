import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/auth/login/view.dart';

import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/tesst.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

/*
class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  String selectedCategoryName = 'Select main category';
  Image selectedImg = Image.asset(
    "assets/images/Vector.png",
  );

  int mainCatAmount = 0; // Declare mainCatAmount as an integer

  Map<String, List<Map<String, dynamic>>> subcategories = {
    'Housing': [
      {'name': 'Rent', 'category': 'Housing', 'image':Image.asset("assets/images/rent(key).png",width: 35,)},
      {'name': 'Energy', 'category': 'Housing', 'image':Image.asset("assets/images/energy.png",width: 35,)},
      {'name': 'Maintenance', 'category': 'Housing', 'image':Image.asset("assets/images/maintenance.png",width: 35,)},
      {'name': 'Services', 'category': 'Housing', 'image':Image.asset("assets/images/services.png",width: 35,)},

    ],
    'Bills & Utilities': [
      {'name': 'Electricity Bill', 'category': 'Bills & Utilities', 'image':Image.asset("assets/images/electric_bill.png",width: 35,)},
      {'name': 'phone Bill', 'category': 'Bills & Utilities', 'image':Image.asset("assets/images/phone_bill.png",width: 35,)},
      {'name': 'Water Bill', 'category': 'Bills & Utilities', 'image':Image.asset("assets/images/water_bill.png",width: 35,)},
      {'name': 'Gas Bill', 'category': 'Bills & Utilities', 'image':Image.asset("assets/images/Gas.png",width: 35,)},
      {'name': 'Internet Bill', 'category': 'Bills & Utilities', 'image':Image.asset("assets/images/internet.png",width: 35,)},
    ],
    'Shopping': [
      {'name': 'Clothes & Shoes', 'category': 'Shopping', 'image':Image.asset("assets/images/Clothes.png",width: 35,)},
      {'name': 'Accessories', 'category': 'Shopping', 'image':Image.asset("assets/images/access.png",width: 35,)},
      {'name': 'Beauty', 'category': 'Shopping','image':Image.asset("assets/images/beauty.png",width: 35,)},
      {'name': 'Kids', 'category': 'Shopping','image':Image.asset("assets/images/kids.png",width: 35,)},
      {'name': 'Garden', 'category': 'Shopping','image':Image.asset("assets/images/garden.png",width: 35,)},
      {'name': 'Gifts', 'category': 'Shopping','image':Image.asset("assets/images/gifts.png",width: 35,)},
      {'name': 'pets & Animals', 'category': 'Shopping','image':Image.asset("assets/images/pets.png",width: 35,)},
    ],
    'Food & Drinks': [
      {'name': 'Groceries', 'category': 'Food & Drinks', 'image':Image.asset("assets/images/categories.png",width: 35,)},
      {'name': 'Fast food & Restaurant', 'category': 'Food & Drinks', 'image':Image.asset("assets/images/fastFood.png",width: 35,)},
    ],
    'Life & Entertainment': [
      {'name': 'Health care', 'category': 'Life & Entertainment', 'image':Image.asset("assets/images/health.png",width: 35,)},
      {'name': 'Fitness', 'category': 'Life & Entertainment', 'image':Image.asset("assets/images/fitness.png",width: 35,)},
      {'name': 'Education', 'category': 'Life & Entertainment','image':Image.asset("assets/images/education.png",width: 35,)},
      {'name': 'Hobbies', 'category': 'Life & Entertainment','image':Image.asset("assets/images/hoppies.png",width: 35,)},
      {'name': 'Life Events', 'category': 'Life & Entertainment','image':Image.asset("assets/images/events.png",width: 35,)},

    ],
    'Vehicle': [
      {'name': 'Fuel', 'category': 'Vehicle', 'image':Image.asset("assets/images/Fule.png",width: 35,)},
      {'name': 'Parking', 'category': 'Vehicle', 'image':Image.asset("assets/images/parking.png",width: 35,)},
      {'name': 'vehicle Maintence', 'category': 'Vehicle','image':Image.asset("assets/images/maintenance_Car.png",width: 35,)},
      {'name': 'Leasing', 'category': 'Vehicle','image':Image.asset("assets/images/leasing.png",width: 35,)},
    ],


  };

  List<Map<String, dynamic>> categorie= [
    {'name': 'Housing', 'image':Image.asset("assets/images/noto_house (2).png",width: 35,)},
    {'name': 'Bills & Utilities', 'image':Image.asset("assets/images/Bills.png",width: 35,)},
    {'name': 'Shopping', 'image':Image.asset("assets/images/shoppingCatg.png",width: 35,)},
    {'name': 'Food & Drinks', 'image': Image.asset("assets/images/emojione_fork-and-knife.png",width: 35,)},
    {'name': 'Life & Entertainment', 'image': Image.asset("assets/images/twemoji_man-biking.png",width: 35,)},
    {'name': 'Vehicle', 'image':Image.asset("assets/images/22989_cabriolet_car_mazda_red_transport_icon 1.png",width: 35,)},
    // Add more categories as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Add Budget",
          style: TextStyle(fontSize: 20.sp, color: Color(0xff292929), fontWeight: FontWeight.w600),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(Icons.arrow_back_ios, color: Color(0xff292929)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.h),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  // Navigate to category selection screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryListScreen(categories: categorie),
                    ),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        selectedCategoryName = value['name'];
                        selectedImg = value['image'];
                      });
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.white,
                  ),
                  height: 100,
                  width: 1000,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w),
                        child: CircleAvatar(child: selectedImg, backgroundColor: Color(0xffEFEFEF), radius: 30),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        selectedCategoryName,
                        style: TextStyle(fontSize: 20, color: Color(0xff9B9B9B), fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0.w),
                        child: Icon(Icons.arrow_forward_ios, size: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: Colors.white,
                ),
                height: 100,
                width: 1000,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.w),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          "Amount",
                          style: TextStyle(fontSize: 20, color: Color(0xff9B9B9B), fontWeight: FontWeight.w600),
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
                        setState(() {
                          // Update mainCatAmount when the text field value changes
                          mainCatAmount = int.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BTN(
                text: "Save",
                onPrees: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubcategoriesScreen(
                        selectedimgCategory: selectedImg,
                        selectedCategory: selectedCategoryName,
                        subcategories: subcategories,
                        mainCatAmount: mainCatAmount.toDouble(), // Convert mainCatAmount to double
                      ),
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

///////////////////////////////////////////////////////////////////////////

class CategoryListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories;

  CategoryListScreen({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text("Main Categories",style: TextStyle(fontSize: 20.sp,color: Color(0xff292929),fontWeight: FontWeight.w600))
            ,leading: InkWell(
            onTap:  (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>HomeScreen ()));
            },
            child: Icon(Icons.arrow_back_ios,color: Color(0xff292929),))),
        body:ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 10.0.w,right: 10.w),
                  child: Container(
                    height: 70.h,
                    decoration: BoxDecoration(  color: Colors.white,borderRadius: BorderRadiusDirectional.circular(10)),


                    child: Center(
                      child: ListTile(
                        leading:CircleAvatar(child:   categories[index]['image'],backgroundColor: Color(0xffEFEFEF),radius: 30),

                        title: Text(
                          categories[index]['name'],
                          style: TextStyle(color: Color(0xff292929),fontWeight: FontWeight.w600,fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context, categories[index]);
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0.h), // Add space between categories
              ],
            );
          },
        )

    );
  }
}
class SubcategoriesScreen extends StatelessWidget {
  final String selectedCategory;
  final Widget selectedimgCategory;
  final Map<String, List<Map<String, dynamic>>> subcategories;
  final double mainCatAmount; // Accept mainCatAmount as double

  SubcategoriesScreen({
    required this.selectedimgCategory,
    required this.selectedCategory,
    required this.subcategories,
    required this.mainCatAmount, // Update constructor to accept mainCatAmount
  });

  @override
  Widget build(BuildContext context) {
    // Filter subcategories based on selected category
    List<Map<String, dynamic>> filteredSubcategories = subcategories[selectedCategory] ?? [];

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
                    child: CircleAvatar(child: selectedimgCategory,backgroundColor: Color(0xffEFEFEF),radius: 30),
                  ),
                  SizedBox(width: 15.w,),
                  Text(
                    selectedCategory,
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
                  itemCount: filteredSubcategories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        Container(
                          height: 70.h,
                          decoration: BoxDecoration(  color: Colors.white,borderRadius: BorderRadiusDirectional.circular(10)),

                          child:  Center(
                            child: ListTile(
                              leading:CircleAvatar(child:filteredSubcategories[index]['image'],backgroundColor: Color(0xffEFEFEF),radius: 30),
                              title: Text(filteredSubcategories[index]['name'], style: TextStyle(color: Color(0xff292929),fontWeight: FontWeight.w500,fontSize: 18), ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  SubcategoryDetailsScreen(subcategoryName: filteredSubcategories[index]['name'],subcategoryimg: filteredSubcategories[index]['image'],selectedCategory: selectedCategory,selectedimgCategory:  selectedimgCategory, mainCatAmount: mainCatAmount.toDouble()), // Convert mainCatAmount to double
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

//////////////////////////////////////////////////////////////////////////////



class Budget {
  final Widget selectedimgCategory;
  final String selectedCategory;
  final String selectedSubcategory;
  final double mainAmount;
  final double subAmount;
  final Image subCategoryimg;

  Budget({
    required this.selectedimgCategory,
    required this.selectedCategory,
    required this.selectedSubcategory,
    required this.mainAmount,
    required this.subAmount,
    required this.subCategoryimg,
  });
}

class SubcategoryDetailsScreen extends StatelessWidget {
  final String selectedCategory;
  final Widget selectedimgCategory;
  final String subcategoryName;
  final Image subcategoryimg;
  final double mainCatAmount;

  SubcategoryDetailsScreen({
    required this.subcategoryName,
    required this.subcategoryimg,
    required this.selectedCategory,
    required this.selectedimgCategory,
    required this.mainCatAmount,
  });

  @override
  Widget build(BuildContext context) {
    double subAmount = 0;

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
                    child: subcategoryimg,
                    backgroundColor: Color(0xffEFEFEF),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  subcategoryName,
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
                      subAmount = double.tryParse(value) ?? 0;
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
                Budget newBudget = Budget(
                  selectedCategory: selectedCategory,
                  selectedimgCategory: selectedimgCategory,
                  selectedSubcategory: subcategoryName,
                  mainAmount: mainCatAmount,
                  subAmount: subAmount,
                  subCategoryimg: subcategoryimg,
                );
                budgetList.add(newBudget);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextScreen(budgetList: budgetList),
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

class NextScreen extends StatefulWidget {
  final List<Budget> budgetList;

  NextScreen({required this.budgetList});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {

  double totalAmount = 1000;
  double spentAmount = 300;
  List<bool> _isCheckedList = [];

  List<Map<String, dynamic>> selectedSubcategories = [];

  @override
  void initState() {
    super.initState();
    // Initialize _isCheckedList with false values for each item in the selectedSubcategories list
    _isCheckedList = List.generate(widget.budgetList.length, (index) => false);

    super.initState();

    // Check if the new choice already exists in selectedSubcategories
    bool mainCategoryExists = selectedSubcategories.any((element) =>
    element['mainCategory'] == widget.budgetList.last.selectedCategory);

    if (mainCategoryExists) {
      // If the main category already exists, find its index in the list
      int index = selectedSubcategories.indexWhere((element) =>
      element['mainCategory'] == widget.budgetList.last.selectedCategory);
      // Add the new subcategory to the existing main category's list of subcategories
      selectedSubcategories[index]['subcategories'].add({
        'name': widget.budgetList.last.selectedSubcategory,
        'image': widget.budgetList.last.subCategoryimg,
        'amount': widget.budgetList.last.subAmount,
      });
    } else {
      // If the main category doesn't exist, add a new entry for it
      selectedSubcategories.add({
        'mainCategory': widget.budgetList.last.selectedCategory,
        'subcategories': [
          {
            'name': widget.budgetList.last.selectedSubcategory,
            'image': widget.budgetList.last.subCategoryimg,
            'amount': widget.budgetList.last.subAmount,
          }
        ],
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Your Budgets",
          style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.budgetList.map((budget) {
            int index = widget.budgetList.indexOf(budget); // Get the index of the current budget item
            return Padding(
              padding: EdgeInsets.only(
                  top: 15.h, left: 8.w, right: 6.w, bottom: 10.h),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(4)), //border corner radius
                            ),
                            height: 48,
                            width: 35,
                            child: CircleAvatar(
                              child: budget.selectedimgCategory,
                              backgroundColor: Color(0xffEFEFEF),
                              radius: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 48,
                            width: 279.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                          budget.selectedCategory,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff292929))),
                                    ),
                                    Text(
                                        "EGP ${spentAmount} of EGP ${budget.mainAmount.toStringAsFixed(2)}",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff525252))),
                                  ],
                                ),
                                SizedBox(height: 15),
                                LoadingProg(
                                    totalAmount: budget.mainAmount,
                                    spentAmount: spentAmount),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: selectedSubcategories.map((subcategory) {
                          return Container(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  activeColor: Theme.of(context).primaryColor,
                                  value: _isCheckedList[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isCheckedList[index] = value ?? false;
                                      if (_isCheckedList[index]) {
                                        spentAmount = budget.mainAmount;
                                      } else {
                                        spentAmount = 300; // Reset spentAmount to its original value
                                      }
                                    });
                                  },
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffEFEFEF),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                  ),
                                  height: 48,
                                  width: 30.w,
                                  child: CircleAvatar(
                                    child: budget.subCategoryimg,
                                    backgroundColor: Color(0xffEFEFEF),
                                    radius: 30,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  height: 48,
                                  width: 210.w,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              budget.selectedSubcategory,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff292929))),
                                          Text(
                                              "EGP ${_isCheckedList[index] ? budget.mainAmount.toString() : spentAmount.toString()} of EGP ${budget.mainAmount}",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff525252))),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      LoadingProg(
                                          totalAmount: budget.mainAmount,
                                          spentAmount: spentAmount),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                width: MediaQuery.of(context).size.width.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(8)), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(
                          0.4), //color of shadow
                      spreadRadius: 1, //spread radius
                      blurRadius: 10, // blur radius
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left:30.0.w),
        child: SizedBox(
          width: double.infinity.w,
          height: 50.h,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => test2()),
              );
            },
            child: Text(
              "Add new Expenses",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
    );
  }
}



List<Budget> budgetList = [];
*/

/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class AddSubBudgetScreen extends StatefulWidget {
  @override
  _AddSubBudgetScreenState createState() => _AddSubBudgetScreenState();
}

class _AddSubBudgetScreenState extends State<AddSubBudgetScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Sub Budget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Select category'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle category selection
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Amount'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle amount input
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Date',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),
              subtitle: Text(
                _selectedDate == null
                    ? 'DD/MM/YY (Optional)'
                    : DateFormat('d MMMM y').format(_selectedDate!),
              style: TextStyle(fontSize: 14)),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => _selectDate(context),
            ),
            Divider(),
            SwitchListTile(

              title: Text('Repeat this budget',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16.sp),),
              subtitle: Text('Budget will renew automatically.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Color(0xff656565)),),
              value: _isSwitched,
              activeColor:Theme.of(context).primaryColor,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/



abstract class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final UserModel user;
  final String message;

  const SignUpSuccess(this.user, this.message);

  @override
  List<Object> get props => [user, message];
}

class SignUpFailure extends SignUpState {
  final String error;

  const SignUpFailure(this.error);

  @override
  List<Object> get props => [error];
}

class UserModel {
  final String name;
  final String email;
  final bool tc;
  final String updatedAt;
  final String createdAt;
  final int id;

  UserModel({
    required this.name,
    required this.email,
    required this.tc,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      tc: json['tc'],
      updatedAt: json['updated_at'],
      createdAt: json['created_at'],
      id: json['id'],
    );
  }
}

class AuthRepository {
  final Dio _dio = Dio();
  final String baseUrl = 'https://cashkit-d760b886e611.herokuapp.com/api/';

  Future<Map<String, dynamic>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      Response response = await _dio.post(
        '${baseUrl}register',
        data: {
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': password,
        },
      );
      return response.data;
    } on DioError catch (e) {
      throw e.response?.data['message'] ?? 'An error occurred';
    }
  }
}


class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepository authRepository;

  SignUpCubit(this.authRepository) : super(SignUpInitial());

  Future<void> signUp(String name, String email, String password) async {
    emit(SignUpLoading());
    try {
      final response = await authRepository.signUp(
        name: name,
        email: email,
        password: password,
      );
      final user = UserModel.fromJson(response['user']);
      emit(SignUpSuccess(user, response['message']));
    } catch (error) {
      emit(SignUpFailure(error.toString()));
    }
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _isObsecured = true;
  bool _isObsecuredConfirm = true;

  void _toggleObscured() {
    setState(() {
      _isObsecured = !_isObsecured;
    });
  }

  void _toggleObscuredConfirm() {
    setState(() {
      _isObsecuredConfirm = !_isObsecuredConfirm;
    });
  }

  void _signUp(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      final name = _nameController.text;
      final email = _emailController.text;
      final password = _passwordController.text;
      context.read<SignUpCubit>().signUp(name, email, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpCubit(AuthRepository()),
        child: BlocConsumer<SignUpCubit, SignUpState>(
          listener: (context, state) {
            if (state is SignUpSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );
            } else if (state is SignUpFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error)),
              );
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 48),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 26.sp,
                      )),
                ),
                SizedBox(
                  height: 80.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 130),
                  child: Text("Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28.sp,
                          color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.76,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create Your Account",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            TextFormField(
                              controller: _nameController,
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
                                labelText: "Full Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your full name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TextFormField(
                              controller: _emailController,
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
                                labelText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: _isObsecured,
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
                                labelText: "Password",
                                suffixIcon: IconButton(
                                  onPressed: _toggleObscured,
                                  icon: Icon(
                                    _isObsecured ? Icons.visibility : Icons.visibility_off,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 8 || value.length > 20) {
                                  return 'Password must be between 8 and 20 characters';
                                }
                                if (!RegExp(r'[A-Z]').hasMatch(value)) {
                                  return 'Password must contain at least one uppercase letter';
                                }
                                if (!RegExp(r'[0-9]').hasMatch(value)) {
                                  return 'Password must contain at least one number';
                                }
                                if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                                  return 'Password must contain at least one special character';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: _isObsecuredConfirm,
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
                                labelText: "Confirm Password",
                                suffixIcon: IconButton(
                                  onPressed: _toggleObscuredConfirm,
                                  icon: Icon(
                                    _isObsecuredConfirm ? Icons.visibility : Icons.visibility_off,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                if (value != _passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            state is SignUpLoading
                                ? Center(child: CircularProgressIndicator(color: Colors.green))
                                : BTN(
                              text: "Sign Up",
                              onPrees: () => _signUp(context),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 2,
                                  width: 36,
                                  color: Color(0xffBDBDBD),
                                ),
                                Text(" Or sign up with ",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffBDBDBD))),
                                Container(
                                  height: 2,
                                  width: 36,
                                  color: Color(0xffBDBDBD),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xffBDBDBD),
                                        )),
                                    width: 96.w,
                                    height: 50.h,
                                    child: Image.network(
                                        "https://th.bing.com/th/id/R.0fa3fe04edf6c0202970f2088edea9e7?rik=joOK76LOMJlBPw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fgoogle-logo-png-open-2000.png&ehk=0PJJlqaIxYmJ9eOIp9mYVPA4KwkGo5Zob552JPltDMw%3d&risl=&pid=ImgRaw&r=0")),
                                SizedBox(width: 20.w),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xffBDBDBD),
                                        )),
                                    width: 96.w,
                                    height: 50.h,
                                    child: Image.network(
                                        fit: BoxFit.fill,
                                        "https://th.bing.com/th/id/OIP.f1yTTEz6vnVeF9ymigPWNQHaHa?rs=1&pid=ImgDetMain")),
                                SizedBox(width: 20.w),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0xffBDBDBD),
                                        )),
                                    width: 96.w,
                                    height: 50.h,
                                    child: Image.asset("assets/images/xTw.png")),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have an account?',
                                      style: TextStyle(
                                          color: Color(0xffBDBDBD),
                                          fontSize: 14.sp)),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => login()));
                                      },
                                      child: Text(' Log in',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


