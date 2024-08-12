import 'package:e_commerce_store/CustomWidgets/custom_bottom_sheet.dart';
import 'package:e_commerce_store/NavigationMenu/bottom%20_navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/provider.dart';
import '../utils/constants/colors.dart';
import 'cutom_cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BottomNavigationMenu()));
        }, icon:  const Icon(Icons.arrow_back)),
        title:  Text('Cart',style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        actions:  [Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage('assets/Icons/cart.png')))
        )],
      ),

      body:  cart.items.isEmpty
          ? const Center(
        child: Text(
          'Your Cart is Empty',
          style: TextStyle(
            color: Color(0xff0F2F44),
            fontSize: 18,
          ),
        ),
      )
          : Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: cart.itemCount,
                itemBuilder: (ctx, i) => CustomCartItemWidget(
                  id: cart.items.values.toList()[i].id,
                  productId: cart.items.keys.toList()[i],
                  title: cart.items.values.toList()[i].title,
                  quantity: cart.items.values.toList()[i].quantity,
                  price: cart.items.values.toList()[i].price,
                  imageUrl: cart.items.values.toList()[i].imageUrl,
                ),
                separatorBuilder: (ctx, i) => const Divider(),
              ),
            ),
            const CustomBottomSheet()
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   margin: const EdgeInsets.only(bottom: 22, left: 24, right: 24), // Adjusted margins
      //   child: ElevatedButton(
      //     onPressed: () {
      //     },
      //     style: ElevatedButton.styleFrom(
      //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //       backgroundColor: TColors.purple,
      //       padding: const EdgeInsets.symmetric(vertical: 15), // Adjusted padding for the button size
      //     ).copyWith(
      //       minimumSize: WidgetStateProperty.all(const Size(double.infinity, 45)), // Adjusted button size
      //       padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 10)), // Adjusted content padding
      //     ),
      //     child: const Text('Add To Cart'),
      //   ),
      // ),
    );
  }
}
