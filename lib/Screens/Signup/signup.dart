import 'package:e_commerce_store/Screens/Signup/widget/singup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/size.dart';
import '../../utils/constants/text_strings.dart';
import '../Login/widget/form_divider.dart';
import '../Login/widget/social_button.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool isLoading = false;

  void setLoading (bool value){

    setState(() {
      isLoading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white),
      body: Container(
        height: double.infinity,
          color: TColors.purple,
        child: Stack(
          children: [
            Container(
              height: 690,
              decoration: const BoxDecoration(
                color: TColors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(image: AssetImage('assets/logos/Logo.png')),
                      const SizedBox(height: TSize.spaceBtwSection),
                      /// Title
                      Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(height: TSize.defaultSpace),

                      /// Form
                      TSignupForm(onLoadingChange: setLoading),
                      const SizedBox(height: TSize.spaceBtwItem),

                      /// Divider
                      TFormDivider(dividerText:TTexts.orSignUpWith.capitalize!),
                      const SizedBox(height: TSize.spaceBtwItem,),

                      /// Social Button
                      const TSocialButton(),

                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                bottom:15,
                left: 150,
                child: Text('Copyright 2024',style: TextStyle(fontSize: 14,color: Colors.white))),
            if(isLoading)
              Container(
                color: Colors.white,
                child: const Center(child: CircularProgressIndicator()),
              ),
          ],
        ),
      ),


    );
  }
}

