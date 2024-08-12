// import 'package:flutter/cupertino.dart';
//
// import '../CustomWidgets/categories_box.dart';
//
// final List<Map<String, String>> categories = [
//   {"text": "Sports", "image": 'assets/featureIcon/Sports.png'},
//   {"text": "Music", "image": 'assets/featureIcon/Music.png'},
//   {"text": "Tech", "image": 'assets/featureIcon/Tech.png'},
//   // Add all other categories similarly
//   {"text": "Travel", "image": 'assets/featureIcon/Travel.png'},
//   // Total 12 categories
// ];
//
// class CategoriesSelection extends StatefulWidget {
//   const CategoriesSelection({super.key});
//
//   @override
//    createState() => _CategoriesSelectionState();
// }
//
// class _CategoriesSelectionState extends State<CategoriesSelection> {
//   int selectedIndex = 0; // Initially select the first box
//
//   @override
//   Widget build(BuildContext context) {
//     return Wrap( // Wrap widget to manage multiple boxes in multiple rows
//       spacing: 10.0, // space between boxes
//       runSpacing: 10.0, // space between rows
//       children: List.generate(categories.length, (index) {
//         return GestureDetector(
//           onTap: () {
//             setState(() {
//               selectedIndex = index; // Update the selected index
//             });
//           },
//           child: CategoryBox(
//             image: categories[index]["image"]!, // Get image from the list
//             text: categories[index]["text"]!, // Get text from the list
//             isSelected: selectedIndex == index, // Pass selected state
//           ),
//         );
//       }),
//     );
//   }
// }
