import 'package:flutter/material.dart';
import 'package:safar/find_room/data/datacourse/room_data.dart';

class DialogComponent extends StatefulWidget {
  DialogComponent({super.key, required this.data});

  RoomData data;
  int? adults;
  int? children;
  int? rooms;

  @override
  State<DialogComponent> createState() => _DialogComponentState();
}

class _DialogComponentState extends State<DialogComponent> {
  @override
  void initState() {
    widget.adults = widget.data.getAdults;
    widget.children = widget.data.getChildren;
    widget.rooms = widget.data.getRooms;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Container(
          height: 220,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Adults',
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 150,
                        alignment: Alignment.center,
                        width: 50,
                        child: ListView.builder(
                          itemCount: 40,
                          itemBuilder: (context, index) => TextButton(
                            onPressed: () {
                              widget.adults = index;
                              setState(() {});
                            },
                            child: Text(
                              '$index',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: widget.adults == index
                                      ? Colors.red
                                      : Colors.blue),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'Children',
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 150,
                        alignment: Alignment.center,
                        width: 50,
                        child: ListView.builder(
                          itemCount: 40,
                          itemBuilder: (context, index) => TextButton(
                            onPressed: () {
                              widget.children = index;
                              setState(() {});
                            },
                            child: Text(
                              '$index',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: widget.children == index
                                      ? Colors.red
                                      : Colors.blue),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'Room',
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 150,
                        alignment: Alignment.center,
                        width: 50,
                        child: ListView.builder(
                          itemCount: 40,
                          itemBuilder: (context, index) => TextButton(
                            onPressed: () {
                              widget.rooms = index;
                              setState(() {});
                            },
                            child: Text(
                              '$index',
                              style: TextStyle(
                                  fontSize: 26,
                                  color: widget.rooms == index
                                      ? Colors.red
                                      : Colors.blue),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('cancle')),
                  TextButton(
                    onPressed: () {
                      widget.data.setAdults = widget.adults!;
                      widget.data.setChildren = widget.children!;
                      widget.data.setRooms = widget.rooms!;
                      Navigator.of(context).pop();
                      setState(() {});
                    },
                    child: const Text('ok'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
