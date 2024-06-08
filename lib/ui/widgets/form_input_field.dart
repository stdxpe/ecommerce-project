import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/textfield_main.dart';

class FormCustumInputField extends StatelessWidget {
  const FormCustumInputField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: size.height * 0.25,
        child: const Form(
          // key: _formKey,
          // final _formKey = new GlobalKey<FormState>(); // outside the build() method
          child: Column(
            children: [
              SizedBox(height: 20),
              TextfieldMain(),
              Spacer(),
              TextfieldMain(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
