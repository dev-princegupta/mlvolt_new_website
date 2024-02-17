import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color outlineColor;
  final Color textColor;
  final Color hoverTextColor;

  CustomButton({
    required this.onPressed,
    required this.buttonText,
    required this.outlineColor,
    required this.textColor,
    required this.hoverTextColor,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: OutlinedButton(
        
        style: ButtonStyle(
          backgroundColor: _isHovered? MaterialStatePropertyAll<Color>( Color(0xffFF6006)): MaterialStatePropertyAll<Color>(Color(0xff151515)),
           shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder( side: BorderSide(color: widget.outlineColor),
           borderRadius: BorderRadius.circular(6.0))),
           side: MaterialStatePropertyAll<BorderSide>(BorderSide(width: 3, color: widget.outlineColor))
        ),
        onPressed: widget.onPressed,
        
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 8, right: 8),
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: _isHovered ? widget.hoverTextColor : widget.textColor,
              fontSize: 20
            ),
          ),
        ),
        // shape: RoundedRectangleBorder(
        //   side: BorderSide(color: widget.outlineColor),
        //   borderRadius: BorderRadius.circular(8.0),
        // ),
      ),
    );
  }

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}