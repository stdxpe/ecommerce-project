import 'package:flutter/material.dart';

class TextfieldMain extends StatelessWidget {
  const TextfieldMain({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      // onEditingComplete: ,
      decoration: InputDecoration(
        hintText: 'example@mail.com',
        labelText: 'Email',
      ),
      // obscureText: true,
      // maxLength: 50,
      style: TextStyle(),
      // validator: ,
      // onFieldSubmitted: ,
      // onSaved: ,
    );
  }
}
