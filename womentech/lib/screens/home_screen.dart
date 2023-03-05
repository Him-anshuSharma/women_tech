import 'package:flutter/material.dart';
import 'package:womentech/widgets/navBar.dart';
import 'package:womentech/widgets/wrapper.dart';
//
//
// bc it is not working
//
//
class LeftNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 50,
        backgroundColor: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.home),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("HOME"),
                  ),
                ]),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.calendar_month_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("YOUR SCHEDULE"),
                  ),
                ]),
              ),
            ),

            GestureDetector(
              onTap: (){},
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person_pin_rounded),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("PROFILE"),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftNavigationBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Builder(
                    builder: (context) => IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(Icons.notifications_active),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Wrapper(),
          ],
        ),
      ),
    );
  }
}
