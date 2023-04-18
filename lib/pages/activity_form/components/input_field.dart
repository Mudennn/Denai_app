import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget,
      required this.height});

  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: headingColor),
        ),
        Container(
          height: height,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.only(left: 14),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: widget == null ? false : true,
                  autofocus: false,
                  controller: controller,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintText: hint,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                        width: 0,
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              widget == null
                  ? Container()
                  : Container(
                      child: widget,
                    ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
