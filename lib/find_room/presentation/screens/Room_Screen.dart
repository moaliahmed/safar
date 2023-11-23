import 'package:flutter/material.dart';
import 'package:safar/find_room/presentation/component/searchComponent.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(
            fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        title: const Text(
          'Find room',
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 500, child: SearchComponent()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BEST PLACES',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Text(
                      'BEST VIEW',
                      style: TextStyle(fontSize: 16, color: Color(0xff0090ff)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                              width: 100,
                              child: Image.asset(
                                'assets/images/Rectangle3.1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Text(
                              'senegal',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BEST PLACES',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Text(
                      'BEST VIEW',
                      style: TextStyle(fontSize: 16, color: Color(0xff0090ff)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                              width: 100,
                              child: Image.asset(
                                'assets/images/Rectangle3.1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Text(
                              'senegal',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FindRoomBar extends StatelessWidget {
  const FindRoomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
