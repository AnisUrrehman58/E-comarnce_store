
import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../NavigationMenu/bottom _navigation_menu.dart';
import '../Provider/provider.dart';
import '../Screens/successScreen/success_screen.dart';
import '../utils/constants/image_strings.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CartProvider>(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.5,
      padding: EdgeInsets.only(
          top: height * 0.02, left: width * 0.04, right: width * 0.04),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment Summary',style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
          SizedBox(height: height * 0.03),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Total',style: Theme.of(context).textTheme.bodySmall),
                    Text('\$${provider.totalAmount.toString()}',style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Items Discount',style: Theme.of(context).textTheme.bodySmall ),
                    Text('- 0.0',style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Coupon Discount',style: Theme.of(context).textTheme.bodySmall),
                    Text('- 0.0', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping',style: Theme.of(context).textTheme.bodySmall),
                    Text('Free',style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
                SizedBox(height: height * 0.02),
                const Divider(),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',style:Theme.of(context).textTheme.headlineSmall),
                    Text(
                      '\$${provider.totalAmount.toString()}',
                       style:Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
        ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item shipped soon',
              onPressed: () => Get.offAll(() => const BottomNavigationMenu()))),
          style: ElevatedButton.styleFrom(backgroundColor: TColors.purple),
          child: const Text('Check Out'),
        ),],
      ),
    );
  }
}
