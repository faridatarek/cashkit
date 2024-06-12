import 'package:cashkit/screens/nav_bar/view.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class SignUp_Api {
  static const String _baseUrl = 'https://cashkit-d760b886e611.herokuapp.com/api';

  Future<void> registerFun(BuildContext context, String name, String email, String password, String confirmPassword, bool tc) async {
    if (name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty || !tc) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('All fields are required and terms must be accepted', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), backgroundColor: Theme.of(context).primaryColor),
      );
      return;
    }

    final String apiUrl = '$_baseUrl/register';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    final Map<String, dynamic> requestData = {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': confirmPassword,
      'tc': tc,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: jsonEncode(requestData),
    );

    if (response.statusCode == 201) {
      final responseBody = jsonDecode(response.body);
      final errorMessage = responseBody['message'] ?? 'Registration Failed';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), backgroundColor:Theme.of(context).primaryColor),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NavScreen(),
        ),
      );
    } else if (response.statusCode == 302) {
     /* final responseBody = jsonDecode(response.body);
      final errorMessage = responseBody['message'] ?? 'Registration Failed';*/
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("The email has already been taken.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), backgroundColor:Theme.of(context).primaryColor),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${response.statusCode} ${response.body}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)), backgroundColor:Theme.of(context).primaryColor),
      );
    }
  }
}
