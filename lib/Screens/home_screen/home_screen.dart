import 'package:e_commerce_store/CustomWidgets/grid_layout/grid_layouts.dart';
import 'package:e_commerce_store/Screens/category_screen.dart';
import 'package:e_commerce_store/Screens/home_screen/PopularProducts/popular_product.dart';
import 'package:e_commerce_store/Screens/home_screen/detail_screen.dart';
import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:e_commerce_store/utils/constants/size.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/cards_banners.dart';
import '../../CustomWidgets/vertical_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: const Drawer(),
        /// App bar
        appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions:  [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.search,color: Colors.black.withOpacity(0.5)),
        )],
      ),
      /// Body
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: TSize.spaceBtwItem -8,left: TSize.spaceBtwItem),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Banners
              const CardBanners(),

              SizedBox(height: height * 0.02),

              /// Category
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',style: Theme.of(context).textTheme.titleMedium),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CategoryScreen()));
                  }, child: Text('See All',style: TextStyle(color: Colors.black.withOpacity(0.6)))),

                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    selectableContainer(0, 'All', 50),
                    selectableContainer(1, 'Electronic', 95),
                    selectableContainer(2, 'Fashion', 75),
                    selectableContainer(3, 'Shoes', 75),
                    selectableContainer(4, 'Furniture', 95),
                  ],
                )),

              SizedBox(height: height * 0.02),


              /// Popular Product
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Product',style: Theme.of(context).textTheme.titleMedium),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PopularProductScreen()));
                  }, child: Text('See All',style: TextStyle(color: Colors.black.withOpacity(0.6)))),

                ],
              ),

              SizedBox(height: height * 0.02),
              // const VerticalCards(),

              GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const DetailScreen()));},
                  child: TGridLayout(itemCount: 4,itemBuilder: (_, index) => const VerticalCards())),
              SizedBox(height: height * 0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Latest Products',style: Theme.of(context).textTheme.titleMedium),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PopularProductScreen()));
                  }, child: Text('See All',style: TextStyle(color: Colors.black.withOpacity(0.6)))),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget selectableContainer(int index, String text, double width) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Reset all selections to false
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = false;
          }
          // Set the selected container to true
          isSelected[index] = true;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 40,
        width: width,
        decoration: BoxDecoration(
          color: isSelected[index] ? Colors.purple : TColors.light,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected[index] ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

// class SelectedBox extends StatefulWidget {
//   const SelectedBox({
//     super.key,
//     required this.index,
//     required this.text,
//     required this.width,
//   });
//
//   final int index;
//   final String text;
//   final double width;
//
//   @override
//   State<SelectedBox> createState() => _SelectedBoxState();
// }
//
// class _SelectedBoxState extends State<SelectedBox> {
//   List<bool> isSelected = [true, false, false, false, false];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         setState(() {
//           for (int i = 0; i < isSelected.length; i++) {
//             isSelected[i] = false;
//           }
//           // Set the selected container to true
//           isSelected [index] = true;
//         });
//       },
//       child:
//     );
//   }
// }

//
// Row(
// children: [
// Container(
// margin: const EdgeInsets.only(right: 13),
// height: 40,
// width: 50,
// decoration: BoxDecoration(
// color: Colors.purple,
// borderRadius: BorderRadius.circular(8),
// ),
// child: const Center(child: Text('All',style: TextStyle(color: TColors.light))),
// ),
// Container(
// margin: const EdgeInsets.only(right: 10),
// height: 40,
// width: 95,
// decoration: BoxDecoration(
// color: TColors.light,
// borderRadius: BorderRadius.circular(8),
// ),
// child: const Center(child: Text('Electronic')),
// ),
// Container(
// margin: const EdgeInsets.only(right: 10),
// height: 40,
// width: 75,
// decoration: BoxDecoration(
// color: TColors.light,
// borderRadius: BorderRadius.circular(8),
// ),
// child: const Center(child: Text('Fashion')),
// ),
// Container(
// margin: const EdgeInsets.only(right: 10),
// height: 40,
// width: 75,
// decoration: BoxDecoration(
// color: TColors.light,
// borderRadius: BorderRadius.circular(8),
// ),
// child: const Center(child: Text('Shoes')),
// ),
// Container(
// margin: const EdgeInsets.only(right: 10),
// height: 40,
// width: 95,
// decoration: BoxDecoration(
// color: TColors.light,
// borderRadius: BorderRadius.circular(8),
// ),
// child: const Center(child: Text('Furniture')),
// ),
// ],
// ),