import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
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
        appBar: AppBar(
          title: Text('Registration Form'),
        ),
        body: SingleChildScrollView(
          child: Scene3(),
        ),
      ),
    );
  }
}

class Scene3 extends StatefulWidget {
  @override
  _Scene3State createState() => _Scene3State();
}

class _Scene3State extends State<Scene3> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();

  void showDebugMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      textColor: Color.fromARGB(255, 0, 0, 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
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
                    'Username',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
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
                          color: Colors.grey[300],
                        ),
                        child: TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
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
                              return 'Please enter your Username';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 347 * fem,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28 * fem),
                          color: Colors.grey[300],
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(
                              25 * fem,
                              11 * fem,
                              25 * fem,
                              12 * fem,
                            ),
                            hintText: 'Type your Email',
                            hintStyle: TextStyle(
                              color: Colors.grey[700],
                            ),
                            prefixIcon: Icon(
                              Icons.mail,
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
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 450 * fem,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mobile',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 450 * fem,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mobile',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 481 * fem,
                child: Align(
                  child: SizedBox(
                    width: 356 * fem,
                    height: 43 * fem,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28 * fem),
                          color: Colors.grey[300],
                        ),
                        child: TextFormField(
                          controller: mobileController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(
                              25 * fem,
                              11 * fem,
                              25 * fem,
                              12 * fem,
                            ),
                            hintText: 'Enter Your Mobile No ',
                            hintStyle: TextStyle(
                              color: Colors.grey[700],
                            ),
                            prefixIcon: Icon(
                              Icons.mobile_friendly,
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
                              return 'Please enter your Mobile No';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 553 * fem,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'PIN',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 584 * fem,
                child: Align(
                  child: SizedBox(
                    width: 356 * fem,
                    height: 43 * fem,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28 * fem),
                          color: Colors.grey[300],
                        ),
                        child: TextFormField(
                          controller: pinController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
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
                              Icons.pin,
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
                              return 'Please enter your Pin';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 656 * fem,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19 * fem,
                top: 684 * fem,
                child: Align(
                  child: SizedBox(
                    width: 356 * fem,
                    height: 43 * fem,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28 * fem),
                          color: Colors.grey[300],
                        ),
                        child: TextFormField(
                          controller: fullNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(
                              25 * fem,
                              11 * fem,
                              25 * fem,
                              12 * fem,
                            ),
                            hintText: 'Type your Full Name',
                            hintStyle: TextStyle(
                              color: Colors.grey[700],
                            ),
                            prefixIcon: Icon(
                              Icons.mail,
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
                              return 'Please enter your Full Name';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 272 * fem,
                top: 776 * fem,
                child: SizedBox(
                  width: 139 * fem,
                  height: 41.52 * fem,
                  child: TextButton(
                    onPressed: () async {
                      final apiUrl =
                          Uri.parse('http://192.168.100.46:8083/register');
                      final username = usernameController.text;
                      final email = emailController.text;
                      final mobile = mobileController.text;
                      final pin = pinController.text;
                      final fullName = fullNameController.text;

                      if (username.isEmpty ||
                          email.isEmpty ||
                          mobile.isEmpty ||
                          pin.isEmpty ||
                          fullName.isEmpty) {
                        showDebugMessage('Please fill in all required fields.');
                        return;
                      }

                      final data = {
                        'username': username,
                        'email': email,
                        'mobile': mobile,
                        'pin': pin,
                        'full_name': fullName,
                      };

                      print('Request Data: $data');

                      try {
                        final response = await http.post(
                          apiUrl,
                          headers: {"Content-Type": "application/json"},
                          body: jsonEncode(data),
                        );

                        print('Request Data: $data');
                        print('Response status code: ${response.statusCode}');
                        print('Response body: ${response.body}');

                        if (response.statusCode == 201) {
                          print('Registration successful');
                          showDebugMessage(
                              'Registration successful User Registered Successfully');

                          final secondApiUrl = Uri.parse(
                              'http://192.168.100.41:159/blinq/mobile/app/se');
                          final secondApiData = {
                            "CustomerEmail": email,
                            "EmailSubject": "Test Email by Farhan",
                            "EmailContent":
                                "Dear <b>Farhan</b><br/><br/>Thanks for registering at Blinq Mobile App. Your credentials are as follows:<br/><br/>ConsumerCode :  <b>ABCD1234</b><br/>PIN :  <b>9999</b><br/><br/>Blinq Solutions (Pvt) Limited | Payment Service Provider",
                          };

                          final secondApiResponse = await http.post(
                            secondApiUrl,
                            headers: {"Content-Type": "application/json"},
                            body: jsonEncode(secondApiData),
                          );

                          print('Second API Request Data: $secondApiData');
                          print(
                              'Second API Response status code: ${secondApiResponse.statusCode}');
                          print(
                              'Second API Response body: ${secondApiResponse.body}');

                          if (secondApiResponse.statusCode == 200) {
                            print('Second API request successful');
                          } else {
                            print('Second API request failed');
                          }

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => Scene(),
                            ),
                          );
                        } else {
                          print('Registration failed');
                          showDebugMessage('Registration failed');
                        }
                      } catch (error) {
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
                      'REGISTER',
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
            ],
          ),
        ),
      ),
    );
  }
}
