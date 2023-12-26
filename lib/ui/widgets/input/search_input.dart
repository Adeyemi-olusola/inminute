import 'package:flutter/material.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';
import 'package:provider/provider.dart';

class SearchInput extends StatefulWidget {
  SearchInput(
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

  Widget? suffixWidget;
  bool? textCenter;
  // late TextAlign textAlign = TextAlign.left;

  TextEditingController? controller;
  final String? Function(String value)? validator;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     
        
        TextFormField(
          controller: widget.controller,

          style: lightMode.textTheme.headlineSmall,
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
            labelText: widget.labelText,

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
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.white),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.white),
            ),
            //   prefix: widget.preffixWidget,
            filled: true,
            fillColor: Colors.white,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.white),
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
