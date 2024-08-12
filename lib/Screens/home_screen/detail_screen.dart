import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/provider.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title:  Text('Popular Products',style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        actions:  [Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.add_shopping_cart)),
               cart.items.isNotEmpty?
               Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(radius: 10,backgroundColor: Colors.red,
                      child: Center(child: Text(cart.items.length.toString())))): const SizedBox()
            ],)
        )
        ],
      ),

      /// Body
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Image(image: AssetImage('assets/Banners/SmartWatch.png'))),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Smart Watch',style: Theme.of(context).textTheme.headlineSmall),
                      const SizedBox(height: 7),
                      Text('Unisex',style: Theme.of(context).textTheme.labelMedium),

                    ],
                  ),
                  Text('\$345.00',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: TColors.purple,fontWeight: FontWeight.w500)),
                  

                ],
              ),
              const SizedBox(height: 15),
              /// Start

              const Row(
                children: [
                  Icon(Icons.star,color:Color(0xffFFB001)),
                  Icon(Icons.star,color:Color(0xffFFB001)),
                  Icon(Icons.star,color:Color(0xffFFB001)),
                  Icon(Icons.star,color:Color(0xffFFB001)),
                  Icon(Icons.star,color:Color(0xffFFB001)),
                ],
              ),

              const SizedBox(height: 25),
              
              Text('Color',style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 15),
              const Row(
                children: [
                  CircleAvatar(radius: 22,backgroundColor: TColors.purple),
                  SizedBox(width: 10),
                  CircleAvatar(radius: 22,backgroundColor:Colors.blue),
                  SizedBox(width: 10),
                  CircleAvatar(radius: 22,backgroundColor:Colors.black),
                  SizedBox(width: 10),
                  CircleAvatar(radius: 22,backgroundColor:Colors.grey),
                ],
              ),
              const SizedBox(height: 20),

              Text('About',style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 25),

              Text('Maecenas cursus magna vitae convallis congue. Vestibulum dignissim augue odio, congue rutrum magna gravida ac. Sed rhoncus eu arcu a tempus.',
                style: Theme.of(context).textTheme.bodySmall)

            ],
          ),
        ),
      ),
      bottomNavigationBar:  Container(
        margin: const EdgeInsets.only(bottom: 22, left: 24, right: 24), // Adjusted margins
        child: ElevatedButton(
          onPressed: () {
            Provider.of<CartProvider>(context, listen: false).addItem(
                'productId',
                56,
                'Smart Watch',
                'assets/Banners/watch.png');
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: TColors.purple,
            padding: const EdgeInsets.symmetric(vertical: 15), // Adjusted padding for the button size
          ).copyWith(
            minimumSize: WidgetStateProperty.all(const Size(double.infinity, 45)), // Adjusted button size
            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 10)), // Adjusted content padding
          ),
          child: const Text('Add To Cart'),
        ),
      ),
    );
  }
}
