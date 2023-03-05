// ignore_for_file: unnecessary_const

import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:womentech/providers/category_provider.dart';
import 'package:womentech/widgets/categories_card.dart';

class EmailOrganizerPage extends StatefulWidget {
  const EmailOrganizerPage({super.key});

  @override
  State<EmailOrganizerPage> createState() => _EmailOrganizerPageState();
}

class _EmailOrganizerPageState extends State<EmailOrganizerPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //final Categories provider = Provider.of<Categories>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.purple.shade100,
        selectedItemColor: Colors.purple[900],
        selectedLabelStyle: TextStyle(color: Colors.purple),
        unselectedItemColor: Colors.purple[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Your Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BgPage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: const Text(
                'Email Organizer',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Customize your emails and filter them according to the keywords you select.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                '(Tap on categories to add keywords)',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Consumer<CategoriesProvider>(
                builder: (context, provider, child) {
                  final allCategoryList = provider.getALLCategories();
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: allCategoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CatContainer(
                          catName: allCategoryList[index], color: Colors.red);
                    },
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _onItemTapped(int value) {
    switch(value){
      // case 0: Navigator.pushNamed(context, '/EmailOrganizerPage');break;   
      case 1: Navigator.pushNamed(context, '/calendarScreen');break;

      case 2: Navigator.pushNamed(context, '/eventsScreen');break;

      case 3: Navigator.pushNamed(context, '/profilePage');break;

       }
  }

}
