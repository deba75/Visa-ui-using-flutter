import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_card_ui/utils/text.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          // Top-right circle
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          // Bottom-left circle
          Positioned(
            left: -150,
            bottom: -150,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          // Logo at the top-left
          Positioned(
            top: 25,
            left: 15,
            child: SizedBox(
              height: 30,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Positioned(
            top: 62,
            left: 25,
            child: modifiedText(
              text: "it's where you want to be",
              color: Colors.grey.shade900,
              size: 20,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '5678 1205 1385 9658',
                  style: GoogleFonts.sourceCodePro(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade800),
                ),
                Text(
                  'Dabasis Das',
                  style: GoogleFonts.sourceCodePro(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.grey.shade800),
                ),
              ],
            ),
          ),
          Positioned(
              right: 10,
              child:
                  Container(height: 80, child: Image.asset('assets/chip.png')))
        ],
      ),
    );
  }
}
