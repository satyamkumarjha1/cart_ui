import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignupPersonalInfo extends StatefulWidget {
  @override
  State<SignupPersonalInfo> createState() => _SignupPersonalInfoState();
}

class _SignupPersonalInfoState extends State<SignupPersonalInfo> {
  bool isChecked = false;
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              Column(
                children: [
                  // White half
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.07,
                        left: screenWidth * 0.07,
                      ),
                      color: const Color(0xFF26308B),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            // textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 15), // Add space between text
                          Text(
                            "Please enter required information to complete Signup.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                title: const Text(
                                  'Personal Information',
                                  style: TextStyle(color: Colors.white),
                                ),
                                leading: Radio(
                                  value: 0,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text(
                                  'Vehicle Information',
                                  style: TextStyle(color: Colors.white),
                                ),
                                leading: Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('Account'),
                                leading: Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text('Upload'),
                                leading: Radio(
                                  value: 3,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Blue half
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFFCDDDE4),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: screenWidth * 0.05,
                top: screenHeight * 0.35,
                width: screenWidth * 0.9,
                height: screenHeight * 0.60,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: const Color(0xFF34526A),
                      width: 3.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Color(0xFF26308B), // Customize as needed
                            radius: 8, // Adjust the size of the avatar
                          ),
                          SizedBox(width: 10),
                          Text(
                            " Personal Information",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF26308B),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(11),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xF5F5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/Name.png', // Path to your image asset
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Name",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(11),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xF5F5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/email id.png', // Path to your image asset
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Email Address",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(11),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xF5F5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/Password.png', // Path to your image asset
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Password",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(11),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xF5F5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/Password.png', // Path to your image asset
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Confrim Password",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xF5F5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/Email- Mobile Number.png', // Path to your image asset
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Date Of Birth",
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            activeColor: Colors.green,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: "I agree to all ",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                                TextSpan(
                                    text: "terms & condition",
                                    style: const TextStyle(
                                        fontSize: 12.0, color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                                const TextSpan(
                                  text: " and ",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "privacy policy",
                                  style: const TextStyle(
                                      fontSize: 12.0, color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Handle privacy policy button tap
                                      // For example, navigate to privacy policy page
                                    },

                                  // Handle privacy policy button tap
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(250, 50)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Half of the minimumSize width for a circular shape
                            ))),
                        onPressed: () {
                          Navigator.pushNamed(context, "/vehicleInformation");
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
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
