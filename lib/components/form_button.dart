import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final Function()? onTap;

  const FormButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Color.fromARGB(245, 240, 184, 0),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          "Sign In",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Raleway', fontSize: 18),
        )),
      ),
    );
  }
}
