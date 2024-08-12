import 'package:e_commerce_store/Screens/Signup/signup.dart';
import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatefulWidget {
  final Function(bool) onLoadingChanged;

  const TLoginForm({
    super.key,
    required this.onLoadingChanged,
  });

  @override
  State<TLoginForm> createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _rememberMe = false;
  bool _passwordVisible = false;

  login() async {
    widget.onLoadingChanged(true);
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Get.snackbar('', '',
          messageText: const Text('Login Successfully', style:
          TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: TColors.light)),
          backgroundColor: Colors.green.withOpacity(0.7));
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error msg', e.code);
    } catch (e) {
      Get.snackbar('Error Msg', e.toString());
    }
    widget.onLoadingChanged(false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSection),
      child: Column(
        children: [
          /// Email
          TextFormField(
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputField,
          ),

          /// Password
          TextFormField(
            controller: passwordController,
            obscureText: !_passwordVisible,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: Icon(
                  _passwordVisible ? Iconsax.eye : Iconsax.eye_slash,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwInputField / 2,
          ),

          /// Remember me & forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  const Text(TTexts.rememberMe),
                ],
              ),

              /// Forgot password
              TextButton(
                onPressed: () {},
                child: const Text(TTexts.forgetPassword),
              ),
            ],
          ),
          const SizedBox(
            height: TSize.spaceBtwSection,
          ),

          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (() => login()),
              style: ElevatedButton.styleFrom(backgroundColor: TColors.purple),
              child: const Text(TTexts.signIn),
            ),
          ),
          const SizedBox(
            height: TSize.spaceBtwItem,
          ),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => const SignupScreen());
              },
              style: ElevatedButton.styleFrom(backgroundColor: TColors.purple),
              child: const Text(TTexts.createAccount,style: TextStyle(color: Colors.white)),

            ),
          ),
        ],
      ),
    );
  }
}
