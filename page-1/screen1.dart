import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Scene5 extends StatelessWidget {
  final String fullName;
  final String mobile;
  final double fem;

  Scene5({required this.fullName, required this.mobile}) : fem = 440;

  Future<List<Map<String, dynamic>>> fetchApiData() async {
    final data = {"mobile": "03333473872"};
    final response = await http.post(
        Uri.parse('http://192.168.100.41:159/blinq/mobile/app/invoices/paid'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      print('API Request URL: ${response.request!.url}');
      print('API Response Status Code: ${response.statusCode}');
      print('API Response Body: ${response.body}');
      print('API Response header: ${response.headers}');
      return jsonResponse.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load API data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice List'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchApiData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available.'));
          } else {
            // Data has been successfully fetched, display it here.
            final apiData = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: [
                  // ... Your existing UI elements here ...
                  _buildRectangleContainer2(fem, apiData),
                  Container(
                    width: double.infinity,
                    child: Container(
                      width: double.infinity,
                      height: 932 * fem,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 252),
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
                                children: [],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 32 * fem,
                            top: 90 * fem,
                            child:
                                _buildRectangleContainer(fem, fullName, mobile),
                          ),
                          Positioned(
                            left: 32 * fem,
                            top: 350 * fem,
                            child: _buildRectangleContainer1(fem),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 600 * fem,
                            child: _buildRectangleContainer2(
                                fem, apiData as List<Map<String, dynamic>>),
                          ),
                          Positioned(
                            left: 0 * fem,
                            top: 20 * fem,
                            child: _buildAnimatedIconButton(
                              icon: Icons.home,
                              fem: fem,
                              onPressed: () {
                                // Handle the onPressed event for the home icon button
                                // For example, you can navigate to the home screen.
                              },
                            ),
                          ),
                          Positioned(
                            right: 10 * fem,
                            top: 20 * fem,
                            child: _buildAnimatedIconButton(
                              icon: Icons.notifications,
                              fem: fem,
                              onPressed: () {
                                // Handle the onPressed event for the notifications button
                              },
                            ),
                          ),
                          Positioned(
                            right: 50 * fem,
                            top: 20 * fem,
                            child: _buildAnimatedIconButton(
                              icon: Icons.search,
                              fem: fem,
                              onPressed: () {
                                // Handle the onPressed event for the search button
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: const Color.fromARGB(255, 104, 79, 79),
                    thickness: 1.0,
                    height: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAnimatedIconButton(
                          icon: Icons.home, fem: fem, onPressed: () {}),
                      _buildAnimatedIconButton(
                        icon: Icons.location_on,
                        fem: fem,
                        onPressed: () {
                          // Handle the onPressed event for the location button
                        },
                      ),
                      _buildAnimatedIconButton(
                        icon: Icons.qr_code_scanner_outlined,
                        fem: fem,
                        onPressed: () {
                          // Handle the onPressed event for the QR code scanner button
                        },
                      ),
                      _buildAnimatedIconButton(
                        icon: Icons.help,
                        fem: fem,
                        onPressed: () {
                          // Handle the onPressed event for the help button
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildRectangleContainer(double fem, String fullName, String mobile) {
    return Container(
      width: 380 * fem,
      height: 190 * fem,
      decoration: BoxDecoration(
        color: Color(0xc9f8e10c),
        borderRadius: BorderRadius.circular(30 * fem),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: 20 * fem,
            top: 20 * fem,
            child: Container(
              width: 50 * fem,
              height: 30 * fem,
              child: Image.asset(
                'assets/page-1/images/blinq-logo-KER.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: 20 * fem,
            bottom: 20 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.person,
                          size: 24 * fem,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Full Name: $fullName',
                        style: TextStyle(
                          fontSize: 20 * fem,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.mobile_friendly,
                          size: 24 * fem,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' Mobile: $mobile',
                        style: TextStyle(
                          fontSize: 20 * fem,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRectangleContainer1(double fem) {
    return Container(
      width: 380 * fem,
      height: 190 * fem,
      decoration: BoxDecoration(
        color: Color.fromARGB(198, 247, 246, 241),
        borderRadius: BorderRadius.circular(30 * fem),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                icon: Icon(
                  Icons.payment,
                  size: 90 * fem,
                  color: const Color.fromARGB(255, 15, 15, 15),
                ),
                onPressed: () {
                  // Handle the onPressed event for the payment button
                },
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                icon: Icon(
                  Icons.unpublished_sharp,
                  size: 90 * fem,
                  color: const Color.fromARGB(255, 15, 15, 15),
                ),
                onPressed: () {
                  // Handle the onPressed event for the unpublished button
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRectangleContainer2(
    double fem,
    List<Map<String, dynamic>>? apiData,
  ) {
    if (apiData == null) {
      // Handle the case where apiData is null (e.g., show a loading indicator).
      return CircularProgressIndicator();
    } else {
      // Create a ListView to display the list of invoices with the selected fields.
      return Container(
        width: 440 * fem,
        height: 190 * fem,
        decoration: BoxDecoration(
          color: Color.fromARGB(198, 247, 246, 241),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('API Result:'),
              if (apiData.isNotEmpty)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: apiData.length,
                  itemBuilder: (context, index) {
                    final invoice = apiData[index];
                    return ListTile(
                      title: Text('Customer Name: ${invoice["customer_name"]}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amount Paid: ${invoice["amount_paid"]}'),
                          Text('Issue Date: ${invoice["issue_date"]}'),
                          Text('Due Date: ${invoice["duedate"]}'),
                        ],
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      );
    }
  }

  Widget _buildAnimatedIconButton({
    required IconData icon,
    required double fem,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18 * fem),
        child: Ink(
          decoration: BoxDecoration(
            color: Color.fromARGB(238, 255, 255, 255),
            borderRadius: BorderRadius.circular(18 * fem),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(200, 255, 255, 252).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(
              icon,
              size: 24 * fem,
              color: const Color.fromARGB(255, 15, 15, 15),
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
