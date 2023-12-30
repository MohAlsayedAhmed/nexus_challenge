import 'package:nexus_challenge/models/room.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatelessWidget {

  RoomScreen({super.key});
  // Sample list of rooms
  final List<Room> rooms = [
    Room(roomId: '101', capacity: 2, isAvailable: true),
    Room(roomId: '102', capacity: 4, isAvailable: false),
    Room(roomId: '103', capacity: 3, isAvailable: true),
    // Add more rooms as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms and Availability'),
      ),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          final room = rooms[index];

          return ListTile(
            title: Text('Room ${room.roomId}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Capacity: ${room.capacity} people'),
                Text(
                    'Availability: ${room.isAvailable ? 'Available' : 'Not Available'}'),
              ],
            ),
          );
        },
      ),
    );
  }
}