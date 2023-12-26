import 'package:flutter/material.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:provider/provider.dart';

class OutlineInput extends StatefulWidget {
  OutlineInput(
      {Key? key,
      this.controller,
      this.maxLines,
      this.labelText,
      this.validator,
      this.icon,
      this.onChanged,
      this.textCenter,
      this.keyboardType,
      this.onTap,
      this.readOnly,
      this.isCustomer,
      this.obscureText,
      this.suffixWidget,
      this.preffixWidget})
      : super(key: key);
  final int? maxLines;
  String? icon;
  String? labelText;
  Widget? preffixWidget;
  TextInputType? keyboardType;
  dynamic onTap;
  bool? obscureText;
  bool? readOnly;
  dynamic onChanged;
  bool? isCustomer;

  Widget? suffixWidget;
  bool? textCenter;
  // late TextAlign textAlign = TextAlign.left;

  TextEditingController? controller;
  final String? Function(String value)? validator;

  @override
  State<OutlineInput> createState() => _OutlineInputState();
}

class _OutlineInputState extends State<OutlineInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText.toString(),
          style: lightMode.textTheme.bodyMedium!.copyWith(
              fontSize: 13,
              color: widget.isCustomer != null ? Colors.black : Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: widget.controller,

          style: lightMode.textTheme.headlineSmall!.copyWith(
              fontSize: 12,
              color: widget.isCustomer != null ? Colors.black : Colors.white),
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          readOnly: widget.readOnly ?? false,

          obscureText: widget.obscureText ?? false,
          maxLines: widget.maxLines ?? 1,
          validator: widget.validator != null
              ? (String? value) => widget.validator!(value!)
              : null,
          decoration: InputDecoration(
            //labelText: widget.labelText,

            prefixIcon: widget.preffixWidget,
            suffixIcon: widget.suffixWidget ??
                SizedBox(
                  child: widget.icon == null
                      ? Container(
                          width: 20,
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Image.asset(widget.icon.toString()),
                        ),
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Color.fromARGB(66, 197, 197, 197),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Color.fromARGB(66, 197, 197, 197),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Color.fromARGB(141, 197, 197, 197),
              ),
            ),
            //   prefix: widget.preffixWidget,
            filled: true,
            fillColor: widget.isCustomer != null ? Colors.white : Color(0xff262626),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                color: Color.fromARGB(66, 197, 197, 197),
              ),
            ),
          ),
          //  style: FlutterFlowTheme.of(context).bodyText1,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class BlackOutlineInput extends StatefulWidget {
  BlackOutlineInput(
      {Key? key, this.controller, this.maxLines, this.validator, this.onTap})
      : super(key: key);
  final int? maxLines;
  VoidCallback? onTap;
  TextEditingController? controller;
  final String? Function(String value)? validator;

  @override
  State<BlackOutlineInput> createState() => _BlackOutlineInputState();
}

class _BlackOutlineInputState extends State<BlackOutlineInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autofocus: true,
      onTap: widget.onTap,
      obscureText: false,
      maxLines: widget.maxLines,
      validator: widget.validator != null
          ? (String? value) => widget.validator!(value!)
          : null,
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xffB5B5B5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xffB5B5B5),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xffB5B5B5),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xffB5B5B5),
          ),
        ),
      ),
      //  style: FlutterFlowTheme.of(context).bodyText1,
    );
  }
}
