import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilledInput extends StatefulWidget {
  FilledInput({Key? key, this.prefixText, this.suffixText, this.controller , this.validator})
      : super(key: key);
  TextEditingController? controller;
  String? prefixText;
  String? suffixText;
  final String? Function(String value)? validator;

  @override
  State<FilledInput> createState() => _FilledInputState();
}

class _FilledInputState extends State<FilledInput> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Builder(builder: (BuildContext context) {
          return Text(
            widget.prefixText.toString(),
            style: GoogleFonts.inter(),
          );
        }),
        TextFormField(
          controller: widget.controller,
         
          obscureText: false,
          validator: widget.validator != null
          ? (String? value) => widget.validator!(value!)
          : null,

          decoration: InputDecoration(
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset('assets/images/weight.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    widget.prefixText.toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),

            suffixIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.suffixText.toString(),
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    )),
              ],
            ),

            // prefixText: widget.prefixText,
            prefixIconConstraints:
                const BoxConstraints(minWidth: 0, minHeight: 0),
            prefixStyle: GoogleFonts.inter(),
            filled: true,
            fillColor: const Color(0xfff6f6f6),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xfff6f6f6),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xfff6f6f6),
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xfff6f6f6),
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xfff6f6f6),
              ),
            ),
          ),
          //  style: FlutterFlowTheme.of(context).bodyText1,
        ),
      ],
    );
  }
}
