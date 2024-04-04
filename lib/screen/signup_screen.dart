import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
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
                        top: screenHeight * 0.04,
                        left: screenWidth * 0.04,
                        right: screenWidth * 0.05,
                      ),
                      color: const Color(0xFF26308B),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          // Add space between text
                          const Text(
                            "Please enter your valid mobile number to receive OTP for further registration process..",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Text(
                            "Mobile Verification",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),

                          Center(
                            child: SizedBox(
                              height: 190,
                              width: 190,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/create account.png'), // Replace 'your_image.png' with your actual image path
                                    // Adjust the fit as needed
                                  ),
                                ),
                              ),
                            ),
                          )
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
                top: screenHeight * 0.4,
                width: screenWidth * 0.9,
                height: screenHeight * 0.25,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                                  hintText: "Email/Mobile Number",
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
                      const SizedBox(
                        height: 10,
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
                          Navigator.pushNamed(context, "/OTPVerify");
                        },
                        child: const Text(
                          'Sign Up',
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
                          Navigator.pushNamed(context, "/signupPersonal");
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.facebook_rounded,
                              color: Color(0xFF26308B),
                            ),
                            SizedBox(
                              width: 5,
                            ), // Adding space between icon and text
                            Text(
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
                          "Already Registered ? ",
                          style: TextStyle(fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context, "/loginscreen");
                          },
                          child: const Text(
                            "Login",
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
