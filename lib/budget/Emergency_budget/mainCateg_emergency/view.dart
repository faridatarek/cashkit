import 'package:cashkit/budget/Emergency_budget/subCateg_emergency/view.dart';
import 'package:cashkit/core/desgin/btn.dart';
import 'package:cashkit/screens/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCateg_emergency extends StatefulWidget {
  const MainCateg_emergency({Key? key}) : super(key: key);

  @override
  State<MainCateg_emergency> createState() => _MainCateg_emergencyState();
}

class _MainCateg_emergencyState extends State<MainCateg_emergency> {
  String selectedCategoryName_emergency = 'Select main category';
  Image selectedImg_emergency = Image.asset(
    "assets/images/Vector.png",
  );
  int mainCatAmount_emergency = 0;
  Map<String, List<Map<String, dynamic>>> subcategories_emergency = {
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

  List<Map<String, dynamic>> categorie_emergency= [
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
                      builder: (context) => CategoryListScreen_emergency(categories_emergency: categorie_emergency),
                    ),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        selectedCategoryName_emergency = value['name'];
                        selectedImg_emergency = value['image'];
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
                        child: CircleAvatar(child: selectedImg_emergency, backgroundColor: Color(0xffEFEFEF), radius: 30),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        selectedCategoryName_emergency,
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
                          mainCatAmount_emergency = int.tryParse(value) ?? 0;
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
                      builder: (context) => SubcategoriesScreen_emergency(
                        selectedimgCategory_emergency: selectedImg_emergency,
                        selectedCategory_emergency: selectedCategoryName_emergency,
                        subcategories_emergency: subcategories_emergency,
                        mainCatAmount_emergency: mainCatAmount_emergency.toDouble(), // Convert mainCatAmount to double
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

//  Category List Screen for needs  //
class CategoryListScreen_emergency extends StatelessWidget {
  final List<Map<String, dynamic>> categories_emergency;
  const CategoryListScreen_emergency({Key? key, required this.categories_emergency}) : super(key: key);

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
          itemCount: categories_emergency.length,
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
                        leading:CircleAvatar(child:   categories_emergency[index]['image'],backgroundColor: Color(0xffEFEFEF),radius: 30),

                        title: Text(
                          categories_emergency[index]['name'],
                          style: TextStyle(color: Color(0xff292929),fontWeight: FontWeight.w600,fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.pop(context, categories_emergency[index]);
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

