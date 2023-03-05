import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
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
        color: Colors.deepPurple,
        child: Column(
          children: [
            const SizedBox(height: 50),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            Text(
              'Shubhi Paul',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
          image: DecorationImage(
            image: AssetImage('assets/BgPage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child:Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    ListTile(
                      leading: const Icon(Icons.email),
                      title: const Text('shubhi.paul2021@gmail.com'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone),
                      title: const Text('+91 8900934598'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.location_on),
                      title: const Text('VIT Vellore, TN'),
                    ),
                    const SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Edit Profile'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 40),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('   Log Out   '),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 40),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
      void _onItemTapped(int value) {
    switch(value){
      case 0: Navigator.pushNamed(context, '/EmailOrganizerPage');break;   
      case 1: Navigator.pushNamed(context, '/calendarScreen');break;

      case 2: Navigator.pushNamed(context, '/eventsScreen');break;

      // case 3: Navigator.pushNamed(context, '/profilePage');break;

       }
  }
}