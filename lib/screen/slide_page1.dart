import 'package:cart/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlidePage extends StatefulWidget {
  @override
  State<SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: const Color(0xFFC4DE67),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'weekly Payouts \nOr Get Payed On Each\nSafe delivery',
                      style: TextStyle(
                          fontSize: 28.0, // Set the desired font size
                          color: Colors.red,
                          fontWeight:
                              FontWeight.bold // Set the desired text color
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xFFC4DE67),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'No More Waiting\nFor Orders',
                      style: TextStyle(
                          fontSize: 28.0, // Set the desired font size
                          color: Colors.red,
                          fontWeight:
                              FontWeight.bold // Set the desired text color
                          ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Boost your Earning with\nOur Delivery App.No more Waiting,Just\nEarning With Every\nMinute You Work.',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 251, 251, 250),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                    },
                    child: const Text(
                      ' Start ',
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.80),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
        ],
      ),
    );
  }
}
