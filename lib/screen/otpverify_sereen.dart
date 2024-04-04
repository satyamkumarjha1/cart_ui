import 'package:flutter/material.dart';

class OTPVerify extends StatelessWidget {
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
                  // Blue half
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.05,
                        left: screenWidth * 0.04,
                        right: screenWidth * 0.05,
                      ),
                      color: const Color(0xFF26308B),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "OTP Verification",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          // Add space between text
                          const Text(
                            "Please enter OTP received on your mobile number to continue.",
                            style: TextStyle(
                              fontSize: 14,
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
                                        'assets/images/otpverification.png'), // Replace 'your_image.png' with your actual image path
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
                  // White Half
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 205, 221, 228),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                ),
                              )),
                          const SizedBox(width: 10),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              )),
                          const SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xF5F5F5F5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xF5F5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  counterText: '',
                                ),
                              )),
                          const SizedBox(width: 10),
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
                          Navigator.pushNamed(context, "/signupPersonal");
                        },
                        child: const Text(
                          'Verify',
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
