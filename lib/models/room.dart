// room.dart
class Room {
  String roomId;

  int capacity;
  bool isAvailable;

  Room({
    required this.roomId,
    required this.capacity,
    this.isAvailable = true,
  });
}