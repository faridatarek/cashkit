import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/tesst.dart';
import 'package:flutter/material.dart';
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


