import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  const TaskTimeLine(this.detail, {super.key});
  final Map<String, dynamic> detail;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            _buildTimeline(detail['tlColors']),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                // **check empty card
                children: [
                  Text(detail['time']),
                  _buildCard(
                      detail['bgColors'], detail['title'], detail['slot'])
                ],
              ),
            ),
          ],
        ));
  }
}

Widget _buildCard(Color bgColor, String title, String slot) {
  return Container(
    width: 250,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(
          height: 10,
        ),
        Text(slot)
      ],
    ),
  );
}

Widget _buildTimeline(Color color) {
  return Container(
    height: 160,
    width: 20,
    child: TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0,
      isFirst: true,
      indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 15,
          indicator: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 5, color: color)),
          )),
    ),
  );
}
