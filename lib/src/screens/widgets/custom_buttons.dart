import 'package:flutter/material.dart';

class CustomButtons extends StatefulWidget {
  final void Function()? onTap;
  final Color? borderColor;
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;


  const CustomButtons({
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.textColor,
    this.borderColor,
    this.onTap,
});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: widget.borderColor ?? Colors.transparent),
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.text,
                    style: TextStyle(
                      color: widget.textColor,
                      fontFamily: "Nunito",
                      fontSize: 18,
                    ),
                  ),
                ),
                // Image(image: showPassword != null ? suffixIcon : null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
