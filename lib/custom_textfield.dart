import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  var controllerName;
  var keyboardType;
  var autovalidateMode;
  var label;
  var hintText;
  var textInputAction;
  String? Function(String? value) validator;
   CustomTextField({super.key,required this.controllerName,required this.keyboardType,required this.autovalidateMode,required this.label,required this.hintText,required this.validator,required this.textInputAction});
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction,
        controller: widget.controllerName,
        keyboardType: widget.keyboardType,
        autovalidateMode: widget.autovalidateMode,
        validator: widget.validator,
        decoration: InputDecoration(
            label:  Text("${widget.label}"),
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(30),
            )),
    );
  }
}
