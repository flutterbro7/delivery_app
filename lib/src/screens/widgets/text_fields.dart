import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  final void Function()? onTap;
  final String imagePath;
  final String suffixIcon;
  final TextInputType keyboardType;

  const TextFields({
    required this.keyboardType,
    required this.imagePath,
    required this.suffixIcon,
    this.onTap,
    super.key,
  });

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontFamily: "Nunito"),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        prefixText: "+1 ",
        prefixIcon: SizedBox(
          width: 33,
          height: 18,
          child: Image(
            image: AssetImage(widget.imagePath),
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 30,
              width: 30,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF746B),
                ),
                child: Image(
                  image: AssetImage(widget.suffixIcon),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
