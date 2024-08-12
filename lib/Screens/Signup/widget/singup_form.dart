import 'package:e_commerce_store/Screens/Signup/verify_email.dart';
import 'package:e_commerce_store/Screens/Signup/widget/term_condition_checkbox.dart';
import 'package:e_commerce_store/Service/Wrapper/wrapper.dart';
import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';



class TSignupForm extends StatefulWidget {
  final Function(bool) onLoadingChange;
  const TSignupForm({super.key, required this.onLoadingChange,
  });

  @override
  State<TSignupForm> createState() => _TSignupFormState();
}

class _TSignupFormState extends State<TSignupForm> {
  bool visible = true;
  bool isLoading = false;
  TextEditingController email = TextEditingController();
  // TextEditingController name = TextEditingController();
  // TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  signUp() async{
    widget.onLoadingChange(true);
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
      Get.offAll(() => const WrapperState());

    }on FirebaseAuthException catch (e) {
      Get.snackbar('Error',e.code);
    }catch (e){
      Get.snackbar('Error', e.toString());
    }
    widget.onLoadingChange(false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [



    /// UserName
    TextFormField(
      // validator:  (value) => TValidator.validateEmptyText('User name', value),

      expands: false,
      decoration: const InputDecoration(
          labelText: 'Full Name', prefixIcon: Icon(Iconsax.user_edit)),
    ),
    const SizedBox(
      height: TSize.spaceBtwInputField,
    ),

    /// Email
    TextFormField(
      controller: email,
      // validator:  (value) => TValidator.validateEmail(value),

      decoration: const InputDecoration(
        labelText: TTexts.email,
        prefixIcon: Icon(Iconsax.direct),
      ),
    ),
    const SizedBox(
      height: TSize.spaceBtwInputField,
    ),

    /// Phone Number
    const IntlPhoneField
      (
      // validator:  (value) => TValidator.validatePhoneNumber(''),

      decoration: InputDecoration(
        labelText: TTexts.phoneNo,
        prefixIcon: Icon(Iconsax.call),
      ),
    ),


    /// Password
           TextFormField(
             obscureText: visible,
     controller: password,
        // validator:  (value) => TValidator.validatePassword(value),
        decoration:  InputDecoration(
          labelText: TTexts.password,
          prefixIcon: const Icon(Iconsax.password_check),
          suffixIcon: IconButton(onPressed: (){setState(() {
            visible = !visible;
          });},icon: Icon(visible ?  Icons.visibility_off  : Icons.visibility)),
            )
      ),

    const SizedBox(
      height: TSize.spaceBtwSection,
    ),

    /// Term & Conditions
    const TTermsAndConditionCheckbox(),
    const SizedBox(
      height: TSize.spaceBtwSection,
    ),

    /// Sing Up Button

    SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: (() => signUp()),
        style: ElevatedButton.styleFrom(backgroundColor: TColors.purple),
          child: const Text(TTexts.createAccount),
      ),
    ),
          ],
        );
  }
}
