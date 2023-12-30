import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bookings_provider.dart';

class BookingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bookings = context.watch<BookingsProvider>().bookings;
    print(bookings);
    return ListView.builder(
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        var booking = bookings[index];
        return ListTile(
          title: Text(booking.guestName),
          subtitle: Text('${booking.checkInDate} - ${booking.checkOutDate}'),
        );
      },
    );
  }
}