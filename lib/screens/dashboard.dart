import 'package:nexus_challenge/screens/booking_screen.dart';
import 'package:nexus_challenge/screens/bookingform_screen.dart';
import 'package:nexus_challenge/screens/rooms_screen.dart';
import 'package:nexus_challenge/screens/user_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {

  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF3627aa),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://t4.ftcdn.net/jpg/00/09/21/15/360_F_9211505_d4hxfNtPeTfgt7AeGmoO7u79P2hwxkoQ.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Booking'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BookingScreen()))
              },
            ),
            ListTile(
              leading: Icon(Icons.group_rounded),
              title: Text('Users'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_home_work),
              title: Text('Rooms'),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoomScreen()))
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {
                print('user  signed ouuut'),
              },
            ),
          ],
        ),
      ),

      // body: BookingList(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: const EdgeInsets.all(18),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/back.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  title: Text(
                    '30,000',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Booking Operations.'),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(18),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/back.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  title: Text(
                    '12,000',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Done Bookings.'),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(18),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/back.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  title: Text(
                    '17,000',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Client Satisfied.'),
                ),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookingFormScreen()),
          );
        },
        label: const Text('Book Now'),
        backgroundColor: const Color(0xFF3627aa),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50,
        ),
      ),
    );
  }
}