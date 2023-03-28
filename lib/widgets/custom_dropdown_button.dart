import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget{

  List<String> values = [];
  late double width;
  CustomDropDownButtonClass({super.key, 
    required this.values,
    required this.width
  });
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: const BoxDecoration(color: Color.fromRGBO(53, 53, 53, 1.0)),
      // color: const Color.fromRGBO(53, 53, 53, 1.0),

      child: DropdownButton(
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
        onChanged: (String? value) {},
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

}