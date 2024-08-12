import 'package:e_commerce_store/Screens/Login/widget/form_divider.dart';
import 'package:e_commerce_store/Screens/Login/widget/login-header.dart';
import 'package:e_commerce_store/Screens/Login/widget/login_form.dart';
import 'package:e_commerce_store/Screens/Login/widget/social_button.dart';
import 'package:e_commerce_store/Screens/Login/widget/spacing_styling.dart';
import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/size.dart';
import '../../utils/constants/text_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  void setLoading(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: TColors.purple,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 775,
              decoration: const BoxDecoration(
                  color: TColors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),

              child: SingleChildScrollView(
                child: Padding(
                  padding: TSpacingStyle.paddingWithAppbarHeight,
                  child: Column(
                    children: [
                      /// Logo, Title & Sub-Title
                      const TLoginHeader(),

                      /// Form
                      TLoginForm(onLoadingChanged: setLoading),

                      /// Divider
                      TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                      const SizedBox(height: TSize.spaceBtwItem),

                      /// Footer
                      const TSocialButton(),

                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                bottom:25,
                left: 150,
                child: Text('Copyright 2024',style: TextStyle(fontSize: 14,color: Colors.white))),
            if (isLoading)
              Container(color: Colors.white,child: const Center(child: CircularProgressIndicator())),
          ],
        ),
      )
      // bottomNavigationBar: Container(
      //   // padding: const EdgeInsets.only(bottom: 20),
      //     margin: const EdgeInsets.only(left: 140,bottom: 20),
      //     child:  const Text('Copyright 2024',style: TextStyle(fontSize: 14,color: Colors.white))),
    );
  }
}
