import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Pract();
  }
}

class Pract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu_open,
          color: Color.fromARGB(230, 16, 137, 236),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Color.fromARGB(230, 16, 137, 236),
          ),
        ],
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(
              color: Color.fromARGB(255, 9, 103, 180),
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 2),
              child: Row(
                children: [
                  Text(
                    "Hi Jenifer!!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 44, 80),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 1),
              child: Row(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      color: Color.fromARGB(223, 48, 87, 145),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  padding: const EdgeInsets.all(6),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 18,
                        color: Color.fromARGB(192, 11, 44, 70),
                      ),
                      SizedBox(width: 8), // Add space between the icon and the text
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Color.fromARGB(194, 33, 103, 169),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Card(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color.fromARGB(185, 12, 56, 101), width: 2), // Blue border
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 3),
                              child: Text(
                                "Welcome!",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 6, 48, 83),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 3),
                              child: Text(
                                "Let's schedule your project",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 6, 48, 83),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 1, left: 1),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-NUIzIDiRs8A2a6o2l7l7gcerhb5t0ZRb9w&s",
                            height: 80,
                            width: 180,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left:30, top:15, right: 20, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Upcoming Projects",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 6, 48, 83),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 900,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return const Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                color: Color.fromARGB(116, 163, 176, 243),
                                child: SizedBox(
                                  height: 150,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 26),
                                        child: Row(
                                          children: [
                                            Text("June 30, 2022"),
                                            SizedBox(width: 20),
                                            Icon(Icons.more_vert_outlined, size: 15),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 7, right: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.computer_rounded),
                                            SizedBox(width: 10),
                                            Text("DashBoard", style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2, top: 7, right: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Progress"),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: 100,
                                              child: LinearProgressIndicator(
                                                value: 0.3,
                                                backgroundColor: Color.fromARGB(255, 122, 119, 119),
                                                color: Color.fromARGB(168, 91, 11, 240),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                color: Color.fromARGB(116, 163, 176, 243),
                                child: SizedBox(
                                  height: 150,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 26),
                                        child: Row(
                                          children: [
                                            Text("April 12, 2022"),
                                            SizedBox(width: 20),
                                            Icon(Icons.more_vert_outlined, size: 15),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 7, right: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.color_lens),
                                            SizedBox(width: 10),
                                            Text("UI/UX", style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2, top: 7, right: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Progress"),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: 100,
                                              child: LinearProgressIndicator(
                                                value: 0.6,
                                                backgroundColor: Color.fromARGB(255, 122, 119, 119),
                                                color: Color.fromARGB(168, 91, 11, 240),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                color: Color.fromARGB(116, 163, 176, 243),
                                child: SizedBox(
                                  height: 150,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 26),
                                        child: Row(
                                          children: [
                                            Text("May 22, 2022"),
                                            SizedBox(width: 20),
                                            Icon(Icons.more_vert_outlined, size: 15),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 7, right: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.mobile_friendly_outlined),
                                            SizedBox(width: 10),
                                            Text("Mobile App", style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2, top: 7, right: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Progress"),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: 100,
                                              child: LinearProgressIndicator(
                                                value: 0.8,
                                                backgroundColor: Color.fromARGB(255, 122, 119, 119),
                                                color: Color.fromARGB(168, 91, 11, 240),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                color: Color.fromARGB(116, 163, 176, 243),
                                child: SizedBox(
                                  height: 150,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 26),
                                        child: Row(
                                          children: [
                                            Text("May 22, 2022"),
                                            SizedBox(width: 20),
                                            Icon(Icons.more_vert_outlined, size: 15),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 7, right: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.queue_music_sharp),
                                            SizedBox(width: 10),
                                            Text("Banner", style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2, top: 7, right: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Progress"),
                                            SizedBox(height: 10),
                                            SizedBox(
                                              width: 100,
                                              child: LinearProgressIndicator(
                                                value: 0.4,
                                                backgroundColor: Color.fromARGB(255, 122, 119, 119),
                                                color: Color.fromARGB(168, 91, 11, 240),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'My Cash'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined), label: 'Payment'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(157, 120, 134, 224),
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add, size: 28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
