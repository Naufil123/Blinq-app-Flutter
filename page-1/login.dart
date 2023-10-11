import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/page-1/forgotscreen.dart';
import 'package:myapp/page-1/reg.dart';
import 'package:myapp/page-1/screen1.dart';

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
              Scene(),
              // Other widgets in your stack if any
            ],
          ),
        ),
      ),
    );
  }
}

class Scene extends StatelessWidget {
  final GlobalKey<FormState> _formKeyUsername = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyPin = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

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
              key: _formKeyUsername, // Assign the form key
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
                                  12 *
                                      fem, // Adjust the top padding for vertical alignment
                                  25 * fem,
                                  12 *
                                      fem, // Adjust the bottom padding for vertical alignment
                                ),
                                hintText: 'Type your Username',
                                hintStyle: TextStyle(
                                  color: Colors.grey[700],
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: 16 *
                                        fem, // Adjust the left padding for horizontal alignment
                                    right: 12 *
                                        fem, // Adjust the right padding for horizontal alignment
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.grey[700],
                                  ),
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
              key: _formKeyPin,
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
              left: 10 * fem,
              top: 450 * fem, // Adjust the top position as needed
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    // Use Navigator to navigate to the second screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Scene4()), // Navigate to DetailScreen
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 15 * fem,
              top: 460 * fem, // Adjust the top position as needed
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 139 * fem,
                  height: 41.52 * fem,
                  child: TextButton(
                    onPressed: () async {
                      final apiUrl =
                          Uri.parse('http://192.168.100.46:8083/signin');
                      final username = usernameController.text;
                      final pin = pinController.text;

                      if (username.isEmpty || pin.isEmpty) {
                        showDebugMessage(
                            'Fill all required fields.'); // Show an error message for empty fields
                        return;
                      }

                      final data = {
                        'username': username,
                        'pin': pin,
                      };

                      try {
                        final apiResponse = await http.post(
                          apiUrl,
                          headers: {"Content-Type": "application/json"},
                          body: jsonEncode(data),
                        );

                        print('Request Data: $data');
                        print(
                            'Response status code: ${apiResponse.statusCode}');
                        print('Response body: ${apiResponse.body}');

                        if (apiResponse.statusCode == 200) {
                          // Sign-in successful
                          print('Sign-in successful');
                          final userData = jsonDecode(apiResponse.body);
                          final fullName = userData['full_name'];
                          final mobile = userData['mobile'];
                          showDebugMessage('Sign-in successful');

                          // Navigate to Scene5 and pass the full name and mobile number
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => Scene5(
                              fullName: fullName,
                              mobile: mobile,
                            ),
                          ));
                        } else {
                          // Sign-in failed, handle the error
                          print('Sign-in failed');
                          showDebugMessage('Sign-in failed');
                        }
                      } catch (error) {
                        // Handle any errors that occurred during the API call
                        print('Error: $error');
                        showDebugMessage('Error: $error');
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
                      'LOGIN',
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
            Positioned(
              right: 65 * fem,
              top: 550 * fem, // Adjust the top position as needed
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Scene3()), // Navigate to DetailScreen
                    );
                  },
                  child: Text(
                    "Don't have an Account? Create an Account",
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
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
