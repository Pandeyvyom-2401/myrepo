import 'package:flutter/material.dart';

class Commonelevatedbutton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color foregroundColor;
  Color backgroundColor;

  Commonelevatedbutton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class CommonOutlinebutton extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  CommonOutlinebutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          side: BorderSide(color: Colors.white),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class Commonconatiner extends StatelessWidget {
  final Widget child;

  Commonconatiner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF30cfd0), Color(0xFF330867)],
        ),
      ),
      child: child,
    );
  }
}