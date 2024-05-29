import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentPage extends StatefulWidget {

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    bool hasPaid = false;
    int x=1;
    String memberName="sara";

    void togglePaymentStatus() {
      setState(() {
        hasPaid = !hasPaid;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Status'),
      ),
      body: Column(
        children: [
          Container(
            height: 68,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(42)),
                      border: Border.all(color: Theme.of(context).primaryColor),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "$x",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                Text(
                  memberName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: togglePaymentStatus,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: 24,
                        height: 24,
                        child: Center(
                          child: hasPaid
                              ? Icon(
                            Icons.check,
                            size: 20,
                            color: hasPaid
                                ? Theme.of(context).primaryColor
                                : Colors.white,
                          )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      hasPaid ? 'pay' : 'Didn’t  Pay',
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}