import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RedTextButton extends StatelessWidget {
  const RedTextButton({
    Key? key,
    required this.tittle,
    required this.heightButton,
    required this.widthButton,
    required this.radius
  }) : super(key: key);

  final String tittle;
  final double heightButton;
  final double widthButton;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthButton,
      height: heightButton,
      decoration: BoxDecoration(
          color: Colors.red[800],
          borderRadius: BorderRadius.circular(radius)
      ),
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.red[400]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius)
                )
            )
        ),
        onPressed: () {
          print('Click button $tittle');
        },
        child: Text(
          tittle,
          style: GoogleFonts.mulish(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}