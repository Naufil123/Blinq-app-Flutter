import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';

class Scene1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 440;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone14promax2sj7 (1:84)
        width: double.infinity,
        height: 932 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupzev5a7j (2557SqQUs4GtswStFYzEv5)
              left: 152 * fem,
              top: 0 * fem,
              child: Container(
                width: 349 * fem,
                height: 236.1 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // blinqlogofQ5 (1:90)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 16 * fem, 0 * fem),
                      width: 104 * fem,
                      height: 60.1 * fem,
                      child: Image.asset(
                        'assets/page-1/images/blinq-logo-KER.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogrouphkdxyvZ (2557b5fjxVBUcp2geRHkdX)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 48.1 * fem),
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
              // signint1w (1:92)
              left: 19 * fem,
              top: 243 * fem,
              child: Align(
                child: SizedBox(
                  width: 120 * fem,
                  height: 39 * fem,
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'SIGN IN',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w900,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: ' \n',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w900,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupssi9WBj (2557iQnrvsKYq9DPtJSsi9)
              left: 19 * fem,
              top: 347 * fem,
              child: Align(
                child: SizedBox(
                  width: 356 * fem,
                  height: 44 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x5ed9d9d9),
                      borderRadius: BorderRadius.circular(28 * fem),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            26 * fem, 9 * fem, 26 * fem, 15 * fem),
                        hintText: 'Type your username',
                        hintStyle: TextStyle(color: Color(0xff000000)),
                      ),
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w100,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupkdx7Xcd (2557oudhf9vbzPbvpDKDX7)
              left: 19 * fem,
              top: 446 * fem,
              child: Align(
                child: SizedBox(
                  width: 356 * fem,
                  height: 43 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x6bd9d9d9),
                      borderRadius: BorderRadius.circular(28 * fem),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            25 * fem, 11 * fem, 25 * fem, 12 * fem),
                        hintText: 'Type your Email',
                        hintStyle: TextStyle(color: Color(0xff000000)),
                      ),
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w100,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // usernameZ3X (1:95)
              left: 23 * fem,
              top: 317 * fem,
              child: Align(
                child: SizedBox(
                  width: 91 * fem,
                  height: 20 * fem,
                  child: Text(
                    'USERNAME',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // email3UV (1:96)
              left: 23 * fem,
              top: 407 * fem,
              child: Align(
                child: SizedBox(
                  width: 43 * fem,
                  height: 20 * fem,
                  child: Text(
                    'Email',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupyz5bjs7 (2557updWojc57hibMqyZ5B)
              left: 19 * fem,
              top: 549 * fem,
              child: Align(
                child: SizedBox(
                  width: 356 * fem,
                  height: 44 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x5ed9d9d9),
                      borderRadius: BorderRadius.circular(28 * fem),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            26 * fem, 9 * fem, 26 * fem, 15 * fem),
                        hintText: 'Enter your Mobile No',
                        hintStyle: TextStyle(color: Color(0xff000000)),
                      ),
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w100,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupxhbpyWZ (25581V8k6wSVTmzn8qxhBP)
              left: 19 * fem,
              top: 648 * fem,
              child: Align(
                child: SizedBox(
                  width: 356 * fem,
                  height: 43 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x6bd9d9d9),
                      borderRadius: BorderRadius.circular(28 * fem),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(
                            25 * fem, 11 * fem, 25 * fem, 12 * fem),
                        hintText: 'Type a Pin',
                        hintStyle: TextStyle(color: Color(0xff000000)),
                      ),
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w100,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // mobilenoc3j (1:112)
              left: 23 * fem,
              top: 519 * fem,
              child: Align(
                child: SizedBox(
                  width: 79 * fem,
                  height: 20 * fem,
                  child: Text(
                    'Mobile No',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // pinWeu (1:113)
              left: 23 * fem,
              top: 609 * fem,
              child: Align(
                child: SizedBox(
                  width: 27 * fem,
                  height: 20 * fem,
                  child: Text(
                    'PIN',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group4QEV (1:103)
              left: 272 * fem,
              top: 746 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 139 * fem,
                  height: 41.52 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle6hzH (1:99)
                        left: 61 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 78 * fem,
                            height: 41 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xc9f8e10c),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10 * fem),
                                  topRight: Radius.circular(38 * fem),
                                  bottomRight: Radius.circular(43 * fem),
                                  bottomLeft: Radius.circular(14 * fem),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle7bpm (1:100)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 78.27 * fem,
                            height: 41.52 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x9bf8e10c),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10 * fem),
                                  topRight: Radius.circular(38 * fem),
                                  bottomRight: Radius.circular(43 * fem),
                                  bottomLeft: Radius.circular(14 * fem),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // signin6Wd (1:101)
                        left: 39 * fem,
                        top: 12 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 59 * fem,
                            height: 20 * fem,
                            child: Text(
                              'SIGN IN',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.2125 * ffem / fem,
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
            ),
          ],
        ),
      ),
    );
  }
}
