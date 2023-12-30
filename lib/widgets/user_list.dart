// user_list.dart
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/bookings_provider.dart';

// class UserList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var users = context.watch<BookingProvider>().users;

//     return ListView.builder(
//       itemCount: users.length,
//       itemBuilder: (context, index) {
//         var user = users[index];
//         return ListTile(
//           title: Text(user.name),
//           subtitle: Text(user.email),
//         );
//       },
//     );
//   }
// }