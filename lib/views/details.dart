import 'package:flutter/material.dart';
import 'package:task_manager/models/task_model.dart';
import 'package:task_manager/views/home.dart';
import 'package:task_manager/widgets/datepicker.dart';
import 'package:task_manager/widgets/task_timeline.dart';
import 'package:task_manager/widgets/task_title.dart';

class DetailsTask extends StatelessWidget {
  final TaskModel taskModel;
  DetailsTask(this.taskModel);

  @override
  Widget build(BuildContext context) {
    final detailList = taskModel.description;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            _buildappBar(context, taskModel),
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DatePick(),
                    Tasktitle(),
                  ],
                ),
              ),
            ),
            detailList == null
                ? SliverFillRemaining(
                    child: Container(
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            'No Task Today',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        )),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (_, index) => TaskTimeLine(detailList[index]),
                        childCount: detailList.length))
          ],
        ));
  }
}

Widget _buildappBar(BuildContext context, TaskModel task) {
  return SliverAppBar(
    expandedHeight: 90,
    backgroundColor: Colors.black,
    leading: IconButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Home()));
      },
      icon: const Icon(Icons.arrow_back),
      color: Colors.white,
      iconSize: 40,
    ),
    actions: const [
      Icon(
        Icons.more_vert,
        color: Colors.white,
        size: 40,
      ),
    ],
    flexibleSpace: FlexibleSpaceBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${task.title} tasks',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'You Have ${task.left} tasks for the Today!',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    ),
  );
}
