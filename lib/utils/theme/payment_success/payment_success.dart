import 'package:e_commerce_store/NavigationMenu/bottom%20_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Screens/successScreen/success_screen.dart';
import '../../constants/image_strings.dart';
import '../../constants/size.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item shipped soon',
              onPressed: () => Get.offAll(() => const BottomNavigationMenu()))),
          child: const Text('Checkout \$1615.4'),
        ),
      ),
    );
  }
}
