import 'package:flutter/material.dart';

import '../models/booking.dart';

class BookingsProvider with ChangeNotifier {

  BookingsProvider(this.bookings);

  List<Booking> bookings;

  void addBooking(Booking booking) {
    bookings.add(booking);
    notifyListeners();
  }

}