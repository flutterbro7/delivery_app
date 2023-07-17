import 'package:flutter/material.dart';

class RegistratonTextFields extends StatefulWidget {
  final bool? isObscure;
  final String hintText;
  final TextInputAction inputAction;
  final String labelText;
  final String? counterText;
  final Color? counterColor;
  final Color? hintTextColor;
  final Color?labelTextColor;

  const RegistratonTextFields({
    required this.labelText,
    required this.hintText,
    this.inputAction = TextInputAction.next,
    this.isObscure,
    this.counterText,
    this.counterColor,
    this.hintTextColor,
    this.labelTextColor,
    super.key,
  });

  @override
  State<RegistratonTextFields> createState() => _RegistratonTextFieldsState();
}

class _RegistratonTextFieldsState extends State<RegistratonTextFields> {
  bool? showPassword;

  @override
  void initState() {
    super.initState();
    showPassword = widget.isObscure;
  }

  void changeObscure() {
    if (showPassword != null) {
      setState(() => showPassword = !showPassword!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.labelText,
            style:  TextStyle(
              fontSize: 18,
              color: widget.labelTextColor,
              fontFamily: "Nunito",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextField(
          style:  TextStyle(
            fontSize: 16,
            color: Color(0xFF000000),
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
          ),
          obscureText: showPassword ?? false,
          textAlignVertical: TextAlignVertical.center,
          textInputAction: widget.inputAction,
          decoration: InputDecoration(
            counterText: widget.counterText,
            counterStyle: TextStyle(
              color: widget.counterColor,
              fontSize: 16,
              fontFamily: "Nunito"
            ),
            hintText: widget.hintText,
            errorMaxLines: 2,
            suffixIcon: showPassword != null
                ? GestureDetector(
                    onTap: changeObscure,
                    child: Icon(
                      showPassword! ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xFF878787),
                    ),
                  )
                : null,
            hintStyle:  TextStyle(
              fontFamily: "Nunito",
              color: widget.hintTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ],
    );
  }
}
