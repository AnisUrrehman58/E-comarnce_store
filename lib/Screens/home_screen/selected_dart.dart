import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class SelectionRow extends StatefulWidget {
  const SelectionRow({super.key});

  @override
  _SelectionRowState createState() => _SelectionRowState();
}

class _SelectionRowState extends State<SelectionRow> {
  // List to keep track of selected containers
  List<bool> isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  selectableContainer(0, 'All', 50),
                  selectableContainer(1, 'Electronic', 95),
                  selectableContainer(2, 'Fashion', 75),
                  selectableContainer(3, 'Shoes', 75),
                  selectableContainer(4, 'Furniture', 95),
                ],
              ),
            ),
          )
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