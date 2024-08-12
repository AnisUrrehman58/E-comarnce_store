import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class VerticalCards extends StatelessWidget {
  const VerticalCards({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.42,
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
              child: IconButton(onPressed: (){}, icon:const Icon(Icons.favorite),color: Colors.grey)),

          Positioned(
            top: 8,
            left: 0.5,
            right: 0.5,
            child: Container(height: 200,width: 220,
                margin: const EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  // color: Colors.blue,
                  image:  const DecorationImage(image: AssetImage('assets/Banners/Bag.png'),),
                )),
          ),
          Positioned(
              left: 18,
              bottom: 70,
              child: Text('Leather Women Bag',style: Theme.of(context).textTheme.bodyMedium)),

          Positioned(
            left: 10,
            bottom: 40,
            child: Row(
              children: [
                const Icon(Icons.star,color: Color(0xffFFB001)),
                const SizedBox(width: 5),
                Text('(715 reviews)',style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),
          const Positioned(
              left: 16,
              bottom: 10,
              child: Text('\$135.00',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: TColors.purple)))

        ],
      ),
    );
  }
}
