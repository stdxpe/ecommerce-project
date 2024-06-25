import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/models/user_model.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/textfields/textfield_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class BottomSheetSaveProfile extends StatelessWidget {
  final UserModel userModel;
  final Function onPressedMain;

  const BottomSheetSaveProfile({
    required this.userModel,
    required this.onPressedMain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red.withOpacity(0.5),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                  // bottom: Constants.kPaddingAppBottom,
                  // top: Constants.kPaddingAppTop,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// CONTENT
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Card(
                          elevation: 2.5,
                          shape: const CircleBorder(),
                          clipBehavior: Clip.hardEdge,
                          margin: EdgeInsets.zero,
                          child: Image.asset(
                            userModel.profilePhoto,
                            height: 100,
                            width: 100,
                            // userModel.profilePhoto,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                              // alignment: Alignment.bottomRight,
                              alignment: Alignment.center,
                              child: ButtonCircularMain(
                                onPressed: () {
                                  /// TODO: ImagePicker here.
                                },
                                buttonColor: Colors.white.withOpacity(0.3),
                                icon: CupertinoIcons.photo_camera_solid,
                                iconColor: Colors.white,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    /// PAYMENT TEXTFIELDS
                    /// Name
                    /// Email (Passive)
                    /// Phone
                    /// Password
                    /// Repeat Password
                    TextfieldMain(),
                    TextfieldMain(),
                    TextfieldMain(),
                    TextfieldMain(),
                    TextfieldMain(),
                  ],
                ),
              ),
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetPaymentSummary(
              mainButtonText: Strings.kStringTitleProfileButton,
              onPressedMain: () {
                onPressedMain();
              },
            ),
          ),
        ],
      ),
    );
  }
}
