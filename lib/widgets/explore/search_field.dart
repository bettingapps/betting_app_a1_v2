import 'package:flutter/material.dart';

import '../../res/styles.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key, required this.hint, required this.text});
  String hint;
  String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      cursorColor: Styles.blueDark,
      autofocus: false,
      style: TextStyle(fontSize: 14.0, color: Styles.blueDark),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
