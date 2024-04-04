import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isChecked = false;
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

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
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.05,
                        left: screenWidth * 0.07,
                      ),
                      color: const Color(0xFF26308B),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            // textAlign: TextAlign.start,
                          ),
                          // Add space between text
                          const Text(
                            "Please enter email address or mobile number and password if you are already registered ,if not then signup for new account.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Center(
                            child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/login.png'), // Replace 'your_image.png' with your actual image path
                                    // Adjust the fit as needed
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Blue half
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color.fromRGBO(205, 221, 228, 1),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: screenWidth * 0.05,
                top: screenHeight * 0.45,
                width: screenWidth * 0.9,
                height: screenHeight * 0.35,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: const Color(0xFF34526A),
                      width: 3.0,
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
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
                                    hintText: "Email/Mobile Number",
                                    filled: true,
                                    fillColor: Color(0xF5F5F5F5),
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter email';
                                    } else if (!value.contains('@')) {
                                      return 'Email must contain the "@" ';
                                    } else if (!value.endsWith('.com')) {
                                      return 'Email must end with .com';
                                    }
                                    return null;
                                  },
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
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.lock,
                                color: Colors.green,
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
                                  obscureText: !showPassword,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        showPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          showPassword = !showPassword;
                                        });
                                      },
                                    ),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter passwoerd';
                                    } else if (value.length < 6) {
                                      return "Password length should be atleast 6";
                                    }
                                    return null;
                                  },
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
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              activeColor: Colors.green,
                            ),
                            const Text(
                              "Remember Me ",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/forgetPassword");
                              },
                              child: const Text(
                                "Forget Password?",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size(250, 50)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Half of the minimumSize width for a circular shape
                              ))),
                          onPressed: () {
                            if (_formKey.currentState!.validate())
                              Navigator.pushNamed(context, "/signupPersonal");
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: screenWidth * 0.05,
                width: screenWidth * 0.9,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Login with ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 130,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 236, 235, 235),
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            const Size(20, 20),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          _launchURL();
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/Facebook.png",
                            ),
                            const SizedBox(
                              width: 5,
                            ), // Adding space between icon and text
                            const Text(
                              'Facebook',
                              style: TextStyle(
                                color: Color(0xFF26308B),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, ("/signup"));
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://www.facebook.com'; // Your Facebook page URL
  if (await canLaunchUrl(Uri())) {
    await launchUrl(Uri());
  } else {
    throw 'Could not launch $url';
  }
}
