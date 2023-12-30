// user_screen.dart
import 'package:nexus_challenge/models/user.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {

  UserScreen({super.key});
  // Sample list of users
  final List<User> users = [
    User(name: 'Amina Hampo', lastBookingDate: '20-03-2021'),
    User(name: 'Raid Sohail', lastBookingDate: '30-05-2021'),
    // Add more users as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users and Bookings'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final e = user.lastBookingDate;

          return ListTile(
            title: Text(user.name),
            subtitle:
            e != null ? Text('Last Booking: ${e}') : Text('No bookings'),
          );
        },
      ),
    );
  }
}






// class UserScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add User'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // var provider = context.read<BookingProvider>();
//                 // provider.addUser(User(
//                 //   name: nameController.text,
//                 //   email: emailController.text,
//                 // ));
//                 // Navigator.pop(context);
//               },
//               child: Text('Add User'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }