import 'package:flutter/material.dart';

class SocialButtons extends StatefulWidget {
  final void Function()? onTap;
  final String image;
  final List<BoxShadow>? boxShadow;
  final String text;
  final Color color;
  final Color textColor;

  const SocialButtons({
    required this.image,
    required this.text,
    required this.color,
    required this.textColor,
    this.boxShadow,
    this.onTap,
  });

  @override
  State<SocialButtons> createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        height: 70,
        width: 300,
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: widget.boxShadow,
            color: widget.color,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                      color: widget.textColor,
                      fontSize: 18,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Image(image: AssetImage(widget.image)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
