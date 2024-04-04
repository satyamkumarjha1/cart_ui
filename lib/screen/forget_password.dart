import 'package:cart/screen/otpverify_sereen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF26308B),
        leading: Container(
          height: 20,
          width: 20,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, "/loginscreen");
            },
          ),
        ),
      ),
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
                        top: screenHeight * 0.02,
                        left: screenWidth * 0.04,
                        // right: screenWidth * 0.05,
                      ),
                      color: const Color(0xFF26308B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Forget Password",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          // Add space between text
                          const Text(
                            "Please enter the mobile number you are registered with to receive OTP to reset the password.",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          // Add space between text
                          Center(
                            child: SizedBox(
                              height: 180,
                              width: 180,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/forgot.png'), // Replace 'your_image.png' with your actual image path
                                    // Adjust the fit as needed
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ), // Blue half
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
                top: screenHeight * 0.4,
                width: screenWidth * 0.9,
                height: screenHeight * 0.25,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      const SizedBox(width: 20),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OTPVerify(),
                            ),
                          );
                        },
                        child: const Text(
                          'Send OTP',
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
