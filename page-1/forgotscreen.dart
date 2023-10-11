import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/page-1/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Scene4(),
              // Other widgets in your stack if any
            ],
          ),
        ),
      ),
    );
  }
}

class Scene4 extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController renterpinController = TextEditingController();

  void showDebugMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      textColor: const Color.fromARGB(255, 2, 2, 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 932 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 152 * fem,
              top: 0 * fem,
              child: Container(
                width: 349 * fem,
                height: 236.1 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        16 * fem,
                        0 * fem,
                      ),
                      width: 104 * fem,
                      height: 60.1 * fem,
                      child: Image.asset(
                        'assets/page-1/images/blinq-logo-KER.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fem,
                        0 * fem,
                        0 * fem,
                        48.1 * fem,
                      ),
                      width: 229 * fem,
                      height: 188 * fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-hkdx.png',
                        width: 229 * fem,
                        height: 188 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 19 * fem,
              top: 243 * fem,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username', // Label for Email
                  style: TextStyle(
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Form(
              child: Stack(
                children: [
                  Positioned(
                    left: 19 * fem,
                    top: 274 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 356 * fem,
                        height: 43 * fem,
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28 * fem),
                              color: Colors.grey[300], // Light Gray
                            ),
                            child: TextFormField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Colors.red), // Red border for error
                                  borderRadius: BorderRadius.circular(28 * fem),
                                ),
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                  25 * fem,
                                  11 * fem,
                                  25 * fem,
                                  12 * fem,
                                ),
                                hintText: 'Type your Username',
                                hintStyle: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey[700],
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w100,
                                color: Colors.grey[700],
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your Username'; // Error message
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 19 * fem,
              top: 347 * fem,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pin', // Label for Email
                  style: TextStyle(
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Form(
              child: Stack(
                children: [
                  Positioned(
                    left: 19 * fem,
                    top: 378 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 356 * fem,
                        height: 43 * fem,
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            // Wrap the TextFormField with a Container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  28 * fem), // Apply BorderRadius here
                              color: Colors.grey[300],
                            ),
                            child: TextFormField(
                              controller: pinController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                  25 * fem,
                                  11 * fem,
                                  25 * fem,
                                  12 * fem,
                                ),
                                hintText: 'Type your Pin',
                                hintStyle: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.grey[700],
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w100,
                                color: Colors.grey[700],
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your PIN';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 19 * fem,
              top: 451 * fem,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Re-Enter Pin', // Label for Email
                  style: TextStyle(
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Form(
              child: Stack(
                children: [
                  Positioned(
                    left: 19 * fem,
                    top: 482 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 356 * fem,
                        height: 43 * fem,
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            // Wrap the TextFormField with a Container
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  28 * fem), // Apply BorderRadius here
                              color: Colors.grey[300],
                            ),
                            child: TextFormField(
                              controller: renterpinController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.fromLTRB(
                                  25 * fem,
                                  11 * fem,
                                  25 * fem,
                                  12 * fem,
                                ),
                                hintText: 'Type your Pin',
                                hintStyle: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.grey[700],
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w100,
                                color: Colors.grey[700],
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your PIN';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              right: 15 * fem,
              top: 600 * fem, // Adjust the top position as needed
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 139 * fem,
                  height: 41.52 * fem,
                  child: TextButton(
                    onPressed: () async {
                      final apiUrl =
                          Uri.parse('http://192.168.100.46:8083/reset_pin');
                      final username = usernameController.text;
                      final pin = pinController.text;
                      final reenterpin = renterpinController.text;

                      if (username.isEmpty ||
                          pin.isEmpty ||
                          reenterpin.isEmpty) {
                        showDebugMessage(
                            'Fill all required fields.'); // Show an error message for empty fields
                        return;
                      }

                      final data = {
                        'username':
                            username, // Use 'email' instead of 'username' to match your server's API
                        'new_pin': pin,
                        'reentered_pin': reenterpin,
                      };

                      try {
                        final response = await http.post(
                          apiUrl,
                          headers: {"Content-Type": "application/json"},
                          body: jsonEncode(data),
                        );

                        print('Request Data: $data');
                        print('Response status code: ${response.statusCode}');
                        print('Response body: ${response.body}');

                        if (response.statusCode == 200) {
                          // PIN change successful
                          print('Pin change successfully');
                          showDebugMessage('Pin change successfully');

                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => Scene(),
                          ));
                        } else {
                          // Handle other status codes
                          print('Error: PIN not changed');
                          showDebugMessage('Error: PIN not changed');
                        }
                      } catch (e) {
                        print('Exception: $e');
                        showDebugMessage('Exception: $e');
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10 * fem),
                          topRight: Radius.circular(38 * fem),
                          bottomRight: Radius.circular(43 * fem),
                          bottomLeft: Radius.circular(14 * fem),
                        ),
                      ),
                      backgroundColor: Color(0xc9f8e10c),
                    ),
                    child: Text(
                      'Update',
                      style: TextStyle(
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // ... (Other Positioned widgets)
          ],
        ),
      ),
    );
  }
}
