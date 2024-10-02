import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget(
      {super.key,
      required this.hintText,
      required this.label,
      required this.icon,
      required this.keyboardType,
      required this.validator,
      this.controller,
      this.obscureToggleButton = false});
  final String hintText;
  final String label;
  final IconData icon;
  final bool obscureToggleButton;
  final TextInputType keyboardType;
  final String? Function(String?) validator;
  final TextEditingController? controller;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late bool textHidden = widget.obscureToggleButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: TextFormField(
          autovalidateMode: AutovalidateMode.disabled,
          enableSuggestions: !widget.obscureToggleButton,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontFamily: 'Sansation-bold'),
          controller: widget.controller,
          validator: widget.validator,
          obscureText: textHidden,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // fillColor: const Color.fromARGB(255, 2, 73, 90),
            // fillColor: const Color(0xff2846A8),
            // fillColor: ,
            // filled: true,
            hintText: widget.hintText,
            suffixIcon: widget.obscureToggleButton
                ? InkWell(
                    customBorder: const CircleBorder(),
                    splashFactory:
                        InkSparkle.constantTurbulenceSeedSplashFactory,
                    child: Icon(
                        textHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.black),
                    onTap: () {
                      setState(() {
                        textHidden = !textHidden;
                      });
                    },
                  )
                : Icon(widget.icon, color: Colors.black),
            label:
                Text(widget.label, style: const TextStyle(color: Colors.black)),
            hintStyle: const TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.black)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                    // color: Colors.redAccent.withOpacity(0.87)
                    color: Colors.redAccent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.black)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                    // color: Colors.redAccent.withOpacity(0.87)
                    color: Colors.redAccent)),
          )),
    );
  }
}
