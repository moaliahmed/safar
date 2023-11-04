import 'package:flutter/material.dart';
import 'package:safar/find_room/presentation/screens/searchComponent.dart';

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
          SizedBox(
              height:500,
              child: SearchComponent()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('BEST PLACES',style: TextStyle(fontSize: 16,color: Colors.black54),),
                    Text('BEST VIEW',style: TextStyle(fontSize: 16,color:Color(0xff0090ff) ),),
                  ],
                ),
                Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 70,
                                  width: 100,
                                  child: Image.asset('assets/images/Rectangle 3.1.png',fit: BoxFit.fill,),),
                              Text('senegal',style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
         Divider(
           thickness: 2,

         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('BEST PLACES',style: TextStyle(fontSize: 16,color: Colors.black54),),
                    Text('BEST VIEW',style: TextStyle(fontSize: 16,color:Color(0xff0090ff) ),),
                  ],
                ),
                Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 70,
                                  width: 100,
                                  child: Image.asset('assets/images/Rectangle 3.1.png',fit: BoxFit.fill,),),
                              Text('senegal',style: TextStyle(fontSize: 14),)
                            ],
                          ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      ) ,
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
