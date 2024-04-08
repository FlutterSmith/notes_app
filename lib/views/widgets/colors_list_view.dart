import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 28,
            backgroundColor: color,
          );
  }
}

class ColorItemList extends StatefulWidget {
  const ColorItemList({super.key});

  @override
  State<ColorItemList> createState() => _ColorItemListState();
}

class _ColorItemListState extends State<ColorItemList> {
  int selectedIndex = 0;

  List<Color> colors = [
    const Color(0xffE7F2F8),
    const Color(0xff74BDCB),
    const Color(0xffFFA384),
    const Color(0xffEFE7BC),
    const Color(0xff845EC2),
    const Color(0xffD65DB1),
    const Color(0xffFF6F91),
    const Color(0xffFF9671),
    const Color(0xffFFC75F),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 3.0,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
