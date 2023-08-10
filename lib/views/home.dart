import 'package:flutter/material.dart';
import 'package:task_manager/models/task_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:task_manager/views/task.dart';
import 'package:task_manager/views/todo.dart';
import 'package:task_manager/views/todo_screen.dart';
import 'package:task_manager/widgets/todo_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final taskList = TaskModel.generateTask();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 246, 183),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // TODO DRawer
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => const DrawerHome()));
          },
          icon: const Icon(Icons.more_vert),
          color: Colors.black,
          iconSize: 30,
        ),
        title: const Text(
          "Hello Pradeep!!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              )),
          const Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYRS0mofvZhLkaNJFVN9wSA-j7HhTb4nLPb6Nbi7qvfw&s"),
            ),
          ),
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       const UserAccountsDrawerHeader(
      //         accountName: Text('John Doe'),
      //         accountEmail: Text('johndoe@example.com'),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: AssetImage('assets/profile_photo.jpg'),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('Home'),
      //         onTap: () {
      //           // Add your action here
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.settings),
      //         title: const Text('Settings'),
      //         onTap: () {
      //           // Add your action here
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.help),
      //         title: const Text('Help'),
      //         onTap: () {
      //           // Add your action here
      //           Navigator.pop(context);
      //         },
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon(Icons.exit_to_app),
      //         title: const Text('Logout'),
      //         onTap: () {
      //           // Add your action here
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 500,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.black,
            ),
            child: const Text(
              'A task manager, also known as a task management tool or task management software, is a digital application or system designed to help individuals or teams organize, track, and manage tasks and projects effectively. ',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Task Manager...",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          const Expanded(child: Task()),
        ],
      ),
      bottomNavigationBar: _bottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget _bottomNavBar() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
          )
        ]),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 40,
              )),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person_2_rounded,
                size: 40,
              ))
        ],
      ),
    ),
  );
}
