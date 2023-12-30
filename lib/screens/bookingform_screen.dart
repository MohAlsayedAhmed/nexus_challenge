import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/booking.dart';
import '../providers/bookings_provider.dart';

class BookingFormScreen extends StatelessWidget {

  BookingFormScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController checkInController = TextEditingController();
  final TextEditingController checkOutController = TextEditingController();
  final TextEditingController roomController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: checkInController,
              decoration: const InputDecoration(labelText: 'Check-In Date'),
            ),
            TextField(
              controller: checkOutController,
              decoration: const InputDecoration(labelText: 'Check-Out Date'),
            ),
            TextField(
              controller: roomController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Room Number'),
            ),
            SizedBox(height: 16.0),
            ChangeNotifierProvider<BookingsProvider>(
              create: (_) => BookingsProvider([]),
              builder: (context, child) {
                return ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty &&
                        checkInController.text.isNotEmpty &&
                        checkOutController.text.isNotEmpty &&
                        roomController.text.isNotEmpty) {
                      context.read<BookingsProvider>().addBooking(Booking(
                        guestName: nameController.text,
                        checkInDate: checkInController.text,
                        checkOutDate: checkOutController.text,
                        roomId: int.parse(roomController.text),
                      ));
                      print(context.read<BookingsProvider>().bookings[0].roomId);
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    'Add Booking',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}