import 'package:flutter/material.dart';

class EventsCard extends StatefulWidget {
  final String eventName;
  final String eventDate;
  final String eventTime;
  // open mail for more information
  const EventsCard({required this.eventName, required this.eventDate, required this.eventTime, super.key});

  @override
  State<EventsCard> createState() => _EventsCardState();
}

class _EventsCardState extends State<EventsCard> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}