import 'package:e_commerce_store/Screens/home_screen/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class PopularProductScreen extends StatelessWidget {
  const PopularProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Popular Products',style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        actions:  [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage('assets/Icons/cart.png')))
        )],
      ),

      /// body
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              SizedBox(height: height * 0.03),
               Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(_) => const DetailScreen()));
                    },
                    child: const VerticalPopularProducts(
                      icon: Icons.favorite_border,
                      image: 'assets/Banners/SmartWatch.png',
                      title: 'Unisex Straw Hat',
                      review: '(271 reviews)',
                      price: '\$36.00',
                    ),
                  ),
                  SizedBox(width: width * 0.04),
                  const VerticalPopularProducts(
                    icon: Icons.favorite,color: Colors.red,
                    image: 'assets/Banners/Flower.png',
                    title: 'Design Orange Vase',
                    review: '(2184 reviews)',
                    price: '\$248.00',
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),

               Row(
                children: [
                  const VerticalPopularProducts(
                    icon: Icons.favorite,color: Colors.red,
                    image: 'assets/Banners/Bag2.png',
                    title: 'Women Leather Bag',
                    review: '(328 reviews)',
                    price: '\$374.00',
                  ),
                  SizedBox(width: width * 0.04),

                  const VerticalPopularProducts(
                    icon: Icons.favorite_border,
                    image: 'assets/Banners/watch.png',
                    title: 'Retro Desk Clock',
                    review: '(3721 reviews)',
                    price: '\$125.00',
                  ),

                ],
              ),

              SizedBox(height: height * 0.02),

              Row(
                children: [
                  const VerticalPopularProducts(
                    icon: Icons.favorite,color: Colors.red,
                    image: 'assets/Banners/headphone.png',
                    title: 'Wireless Headphone',
                    review: '(328 reviews)',
                    price: '\$174.00',
                  ),
                  SizedBox(width: width * 0.04),

                  const VerticalPopularProducts(
                    icon: Icons.favorite_border,
                    image: 'assets/Banners/Bag.png',
                    title: 'Leather Women Bag',
                    review: '(3721 reviews)',
                    price: '\$125.00',
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalPopularProducts extends StatelessWidget {
  const VerticalPopularProducts({
    super.key,

    required this.icon,
    required this.image,
    required this.title,
    required this.review,
    required this.price,
    this.color,
  });
  final Color? color;
final IconData icon;
final String image,title,review,price;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.33,
      width: width * 0.45,
      decoration: BoxDecoration(
          color: TColors.light,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
              right: 2,
              top: 2,
              child: IconButton(onPressed: (){}, icon: Icon(icon,color: color,),color: Colors.grey)),

          Positioned(
            top: 8,
            left: 0.5,
            right: 0.5,
            child: Container(height: 200,width: 220,
                margin: const EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  // color: Colors.blue,
                  image:   DecorationImage(image: AssetImage(image),),
                )),
          ),
          Positioned(
              left: 18,
              bottom: 70,
              child: Text(title,style: Theme.of(context).textTheme.bodyMedium)),

          Positioned(
            left: 10,
            bottom: 40,
            child: Row(
              children: [
                const Icon(Icons.star,color: Color(0xffFFB001)),
                const SizedBox(width: 5),
                Text(review,style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
           Positioned(
              left: 16,
              bottom: 10,
              child: Text(price,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: TColors.purple)))

        ],
      ),
    );
  }
}
