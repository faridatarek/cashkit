import 'package:cashkit/screens/profile/credit_card/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddMoneyScreen extends StatefulWidget {
  const AddMoneyScreen({Key? key}) : super(key: key);

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  final TextEditingController _controller = TextEditingController();
  Color _buttonColor = Colors.grey; // اللون الافتراضي للزر

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _buttonColor = _controller.text.isEmpty
            ? Colors.grey
            : Theme.of(context).primaryColor; // تغيير لون الزر حسب النص
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFEFEF),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Add Card",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Enter Amount",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: double.infinity.w,
            height: 96.h,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 100),
                    border: InputBorder.none,
                    hintText: "000",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    prefix: Text("EGP")),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: _buttonColor,
                    fixedSize: Size(double.infinity.w, 56.h)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreditHomeScreen(),
                      ));
                },
                child: Text(
                  "Add Money",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 16, fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
    );
  }
}
