import 'package:flutter/material.dart';

class DatePick extends StatefulWidget {
  const DatePick({super.key});

  @override
  State<DatePick> createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  final weekList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thurs', 'Frid', 'Sat'];
  final dayList = ['24', '25', '26', '27', '28', '29', '30'];
  var selected = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => setState(() => selected = index),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index
                          ? Colors.grey.withOpacity(0.1)
                          : null),
                  child: Column(
                    children: [
                      Text(
                        weekList[index],
                        style: TextStyle(
                            color:
                                selected == index ? Colors.black : Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        dayList[index],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:
                                selected == index ? Colors.black : Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 5,
              ),
          itemCount: weekList.length),
    );
  }
}
