import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text;
  final double fontSize;
  final String fontFamily;
  final Color normalFontColor;
  final Color howerFontColor;

  const CustomText({
    super.key,
    required this.text,
    required this.normalFontColor,
    required this.howerFontColor,
    required this.fontFamily,
    required this.fontSize,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: Text(
        widget.text,
        style: TextStyle(
          fontFamily: widget.fontFamily,
          fontSize: widget.fontSize,
          color: _isHovered ? widget.howerFontColor : widget.normalFontColor,
        ),
      ),
    );
  }

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
