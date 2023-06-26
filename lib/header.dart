import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            children: [
              Container(
                height: size.height / 5,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(offset: Offset(0, 0), blurRadius: 2),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Image.asset(
                        'your_image_path_here',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        child: Text('Button'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
