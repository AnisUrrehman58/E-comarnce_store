import 'package:e_commerce_store/CustomWidgets/cards_banners.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/categories_box.dart';
import '../utils/constants/colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Category',style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        actions:  [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.search,color: Colors.black.withOpacity(0.5)),
        )],
      ),

      /// Body
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(left: 10,right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            const CardBanners(),

            SizedBox(height: height * 0.03),

               Column(
              children: [
                // 1
                const Row(
                  children: [
                    CategoryBox(image: 'assets/featureIcon/bagicon.png',   text: 'Bag'),
                    CategoryBox(image: 'assets/featureIcon/watchicon.png', text: 'Watch'),
                    CategoryBox(image: 'assets/featureIcon/shoeicon.png',  text: 'Shoes'),
                  ],
                ),
                const SizedBox(height: 15),

                // 2
                Row(
                  children: [
                    const CategoryBox(image: 'assets/featureIcon/jewelicon.png', text: 'Jewelry'),
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 118,width: 120,
                        padding: const EdgeInsets.only(top: 24,right: 24,left: 24),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: TColors.purple
                        ),
                        child:
                        Column(
                          children: [
                            Container(

                              padding: const EdgeInsets.all(10),
                              height: 50,
                              width: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: TColors.lightPurple
                              ),
                              child:  const Column(
                                children: [
                                  Image(image: AssetImage('assets/featureIcon/Sporst.png')),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child:  Text('Sports',style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.white)),
                            )
                          ],
                        )
                    ),
                    // CategoryBox(image: 'assets/featureIcon/gifticon.png', text: 'Gift'),
                    const CategoryBox(image: 'assets/featureIcon/micicon.png', text: 'Music'),
                  ],
                ),
                const SizedBox(height: 15),
                // 3
                const Row(
                  children: [
                    CategoryBox(image: "assets/featureIcon/furniturecion.png", text: 'Furniture'),
                    CategoryBox(image: 'assets/featureIcon/flowericon.png', text: 'Plant'),
                    CategoryBox(image: 'assets/featureIcon/gifticon.png', text: 'Sports'),
                  ],
                ),
                const SizedBox(height: 15),
                // 4
                const Row(
                  children: [
                    CategoryBox(image: "assets/featureIcon/Cosmetic.png", text: 'Cosmetic'),
                    CategoryBox(image: 'assets/featureIcon/Phone.png', text: 'Phone'),
                    CategoryBox(image: 'assets/featureIcon/Sporst.png', text: 'Sports'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50,)

          ],
        ),
        ),
      ),

    );
  }


}


