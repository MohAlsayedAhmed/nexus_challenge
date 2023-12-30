// // room_list.dart
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/bookings_provider.dart';

// class RoomList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var rooms = context.watch<BookingProvider>().rooms;

//     return ListView.builder(
//       itemCount: rooms.length,
//       itemBuilder: (context, index) {
//         var room = rooms[index];
//         return ListTile(
//           title: Text(room.roomType),
//           subtitle: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Price: \$${room.price} - Capacity: ${room.capacity}'),
//               Text(
//                   'Availability: ${room.isAvailable ? 'Available' : 'Not Available'}'),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }