import 'package:e_commerce_store/Screens/Signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Service/Wrapper/wrapper.dart';
import '../../utils/constants/size.dart';
import '../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {

  @override
  void initState() {
    verifyLink();
    super.initState();
  }
  verifyLink() async{
    final user = FirebaseAuth.instance.currentUser!;
    await user.sendEmailVerification().then((value) => {
      Get.snackbar('','',titleText: const Text('link Sent',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600))
          ,messageText: const Text('A link has been send to your email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
          snackPosition: SnackPosition.BOTTOM,margin: const EdgeInsets.all(20))
    });
  }


  /// Reload Function
  reload(){
    FirebaseAuth.instance.currentUser!.reload().then((value) => {
      Get.offAll(() => const WrapperState())
    });
    // Get.snackbar('','',
    //     titleText: const Text('Congratulation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white)),
    //     messageText: const Text('Your account successfully created',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),
    //     backgroundColor: Colors.green);
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        /// The close icon in the app bar is use to logout the user redirect them to the login screen.
        /// This approach is taken to handle scenarios where the user enters the registration process,
        /// If not verified, the app always navigates to the verification screen.......
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const SignupScreen());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// images
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logos/verifyEmail.jpg')
                  )
                ),
                // child: Image(
                //   image: const AssetImage(''),
                //   width: THelperFunctions.screenWidth() * 0.6,),
              ),
              const SizedBox(
                height: TSize.spaceBtwSection,
              ),

              /// Title & Subtitle

              Text(
                TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtwItem),
              Text(widget.email?? '',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwItem),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Button

              SizedBox(width: double.infinity,child: ElevatedButton(
                  onPressed: (() => reload()) ,
                child:  const Text(TTexts.tContinue),
                  )
              ),
              const SizedBox(height: TSize.spaceBtwSection),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail))),





            ],
          ),
        ),
      ),
    );
  }
}
