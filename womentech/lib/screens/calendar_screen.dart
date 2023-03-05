import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDate = DateTime.now();
  EventList<Event> _markedDateMap = EventList(events: Map());
  int _selectedIndex = 1;

  void _onItemTapped(int value) {
    switch(value){
       case 0: Navigator.pushNamed(context, '/EmailOrganizerPage');break;   
      case 1: Navigator.pushNamed(context, '/calendarScreen');break;

     // case 2: Navigator.pushNamed(context, '/eventsScreen');break;

      case 3: Navigator.pushNamed(context, '/profilePage');break;

       }
  }

  @override
  void initState() {
    super.initState();
    // add some events to the markedDateMap for testing purposes
    _markedDateMap.add(
        DateTime.now().subtract(Duration(days: 1)),
        Event(
          date: DateTime.now().subtract(Duration(days: 1)),
          title: 'Event 1',
        ));
    _markedDateMap.add(
        DateTime.now().add(Duration(days: 1)),
        Event(
          date: DateTime.now().add(Duration(days: 1)),
          title: 'Event 2',
        ));
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/BgPage.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Calendar ${_selectedDate.year}",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.purple[900],
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CalendarCarousel<Event>(
                        onCalendarChanged: (DateTime date) {
                          setState(() {
                            _selectedDate = date; 
                          });
                        },
                        onDayPressed: (date, events) {
                          setState(() {
                            _selectedDate = date;
                          });
                        },
                        headerText: DateFormat('MMMM').format(_selectedDate),

                        headerTextStyle: TextStyle(
                          color: Colors.purple[800],
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),

                        weekendTextStyle: TextStyle(color: Colors.purple[200]),

                        weekdayTextStyle: TextStyle(color: Colors.purple[800]),
                        todayButtonColor: Colors.transparent,
                        todayBorderColor: Colors.transparent,
                        todayTextStyle: TextStyle( color: Colors.purple[200],fontWeight: FontWeight.bold,),
                        markedDatesMap: _markedDateMap,
                        thisMonthDayBorderColor: Colors.transparent,
                        selectedDayBorderColor: Colors.purple[200]!,
                        height: 420.0,
                        selectedDateTime: _selectedDate,
                        selectedDayButtonColor:
                            Colors.purple[800]!, // added line
                        daysHaveCircularBorder: true,
                        markedDateShowIcon: true,
                        markedDateIconMaxShown: 3,
                      ),
                    ),
                    
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
