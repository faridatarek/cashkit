import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/core/desgin/loading.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:cashkit/tesst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

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

class SubcategoryDetailsScreen extends StatelessWidget {
  final String selectedCategory;
  final Widget selectedimgCategory;
  final String subcategoryName;
  final Image subcategoryimg;
  final double mainCatAmount; // Accept mainCatAmount as double

  SubcategoryDetailsScreen({
    required this.subcategoryName,
    required this.subcategoryimg,
    required this.selectedCategory,
    required this.selectedimgCategory,
    required this.mainCatAmount, // Update constructor to accept mainCatAmount as double
  });

  @override
  Widget build(BuildContext context) {
    double subAmount = 0; // Initialize subAmount to 0

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
        leading: Icon(Icons.arrow_back_ios, color: Color(0xff292929)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10),
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
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Colors.white,
              ),
              height: 100,
              width: 1000,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff9B9B9B),
                          fontWeight: FontWeight.w600,
                        ),
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
                      subAmount = double.tryParse(value) ?? 0; // Update subAmount when the text field value changes
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
                // Pass both mainCatAmount, subAmount, and subCategoryimg to NextScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextScreen(
                      selectedCategory: selectedCategory,
                      selectedimgCategory: selectedimgCategory,
                      selectedSubcategory: subcategoryName,
                      mainAmount: mainCatAmount.toDouble(), // Convert mainCatAmount to double
                      subAmount: subAmount,
                      subCategoryimg: subcategoryimg, // Pass subCategoryimg
                    ),
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

/////////////////////////////////////////////////////////////////////////

class NextScreen extends StatefulWidget {
  final Widget selectedimgCategory;
  final String selectedCategory;
  final String selectedSubcategory;
  final double mainAmount; // Accept main amount as double
  final double subAmount; // Accept sub amount as double
  final Image subCategoryimg; // Accept subCategoryimg as Image

  NextScreen({
    required this.selectedimgCategory,
    required this.selectedCategory,
    required this.selectedSubcategory,
    required this.mainAmount, // Update constructor to accept main amount
    required this.subAmount, // Update constructor to accept sub amount
    required this.subCategoryimg, // Update constructor to accept subCategoryimg
  });

  @override
  _NextScreenState createState() => _NextScreenState();
}
class _NextScreenState extends State<NextScreen> {
  bool _isChecked = false;
  double totalAmount = 1000;
  double spentAmount = 300;

  List<Map<String, dynamic>> selectedSubcategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Your Budgets",style: TextStyle(fontSize: 23.sp,color:  Theme.of(context).primaryColor,fontWeight: FontWeight.w500)),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

        Padding(
          padding:  EdgeInsets.only(top:15.h,left:8.w,right: 6.w,bottom:10.h),
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

        color:Color(0xffEFEFEF),
        borderRadius: BorderRadius.all(Radius.circular(4)), //border corner radius

        ),
        height:48,width:35,
        child: CircleAvatar(
          child: widget.selectedimgCategory,
          backgroundColor: Color(0xffEFEFEF),
          radius: 20,
        ) ,
        ),
        SizedBox(width:5,),
        Container
        ( height:48,width:279.w,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text( widget.selectedCategory,style: TextStyle(fontSize:16,fontWeight: FontWeight.w600,color: Color(0xff292929))),
        ),

        Text("EGP ${spentAmount} of EGP ${widget.mainAmount.toStringAsFixed(2)}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff525252))),
        ],),
        SizedBox(height:15,),
        LoadingProg(totalAmount: widget.mainAmount,spentAmount: spentAmount),
        ],),
        )
        ],),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: selectedSubcategories
                  .map(
                    (subcategory) => Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor:  Theme.of(context).primaryColor,
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                            if (_isChecked) {
                              spentAmount = totalAmount;
                            } else {
                              // Reset spentAmount to its original value
                              spentAmount = 300; // Change this to the original spentAmount value
                            }
                          });
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        height: 48,
                        width: 30.w,
                        child:  CircleAvatar(
                          child: subcategory['image'],
                          backgroundColor: Color(0xffEFEFEF),
                          radius: 30,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 48,
                        width: 210.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  subcategory['name'],
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xff292929)),
                                ),
                                Text(
                                  "EGP ${_isChecked ? widget.mainAmount.toString() : spentAmount.toString()} of EGP ${totalAmount.toString()}",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff525252)),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            LoadingProg(totalAmount: widget.mainAmount, spentAmount: spentAmount),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              )
                  .toList(),
            ),

          ],
        ),
      ],
    ),

    ),
    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
    width:MediaQuery.of(context).size.width.w,

    decoration: BoxDecoration(

    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(8)), //border corner radius
    boxShadow:[
    BoxShadow(
    color: Colors.grey.withOpacity(0.4), //color of shadow

    spreadRadius:1, //spread radius
    blurRadius:10, // blur radius

    ),

    ],
    ),),
        ),
            SizedBox(height: 120.h),
            Padding(
              padding: const EdgeInsets.only(left:10.0,top:200,right: 10),
              child: BTN(
                text: "Add new Expenses",
                onPrees: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => test2()),
                  );
                },
              ),
            ),
   ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    selectedSubcategories.add({
      'name': widget.selectedSubcategory,
      'image': widget.subCategoryimg, // Use subCategoryimg here
    });
  }
}





/*

class Category {
  String name;
  List<String> subcategories;

  Category({required this.name, required this.subcategories});
}

class CategScreen extends StatefulWidget {
  @override
  _CategScreenState createState() => _CategScreenState();
}

class _CategScreenState extends State<CategScreen> {
  Category? selectedCategory;
  List<String> selectedSubcategories = [];
  List<Category> selectedCategories = [];

  List<Category> categories = [
    Category(name: 'Category 1', subcategories: ['Subcategory 1', 'Subcategory 2']),
    Category(name: 'Category 2', subcategories: ['Subcategory 3', 'Subcategory 4']),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Category Selection')),
      body: ListView(
        children: [
          DropdownButton<Category>(
            hint: Text('Select a category'),
            value: selectedCategory,
            onChanged: (Category? newValue) {
              setState(() {
                selectedCategory = newValue;
              });
            },
            items: categories.map<DropdownMenuItem<Category>>((Category value) {
              return DropdownMenuItem<Category>(
                value: value,
                child: Text(value.name),
              );
            }).toList(),
          ),
          if (selectedCategory != null)
            for (var subcategory in selectedCategory!.subcategories)
              CheckboxListTile(
                title: Text(subcategory),
                value: selectedSubcategories.contains(subcategory),
                onChanged: (bool? value) {
                  setState(() {
                    if (value != null && value) {
                      selectedSubcategories.add(subcategory);
                    } else {
                      selectedSubcategories.remove(subcategory);
                    }
                  });
                },
              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectedCategories.add(selectedCategory!);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NextScreen(selectedCategories, selectedSubcategories),
            ),
          );
        },
        child: Icon(Icons.save),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  final List<Category> selectedCategories;
  final List<String> selectedSubcategories;

  NextScreen(this.selectedCategories, this.selectedSubcategories);

  @override
  Widget build(BuildContext context) {
    // Aggregate selected subcategories for each selected main category
    final Map<Category, List<String>> categorySubcategoriesMap = {};
    for (var category in selectedCategories) {
      final subcategories = category.subcategories.where((subcategory) => selectedSubcategories.contains(subcategory)).toList();
      categorySubcategoriesMap[category] = subcategories;
    }

    return Scaffold(
      appBar: AppBar(title: Text('Selected Categories')),
      body: ListView.builder(
        itemCount: categorySubcategoriesMap.length,
        itemBuilder: (context, index) {
          final category = categorySubcategoriesMap.keys.toList()[index];
          final subcategories = categorySubcategoriesMap[category] ?? [];

          return Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey.shade200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Main Category: ${category.name}'),
                Text('Selected Subcategories:'),
                for (var subcategory in subcategories)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(subcategory),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}*/



