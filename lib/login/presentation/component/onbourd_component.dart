import 'package:flutter/material.dart';
class OnboardComponent extends StatelessWidget {
  const OnboardComponent({super.key, required this.image, required this.title, required this.description});
final  String image;
final  String title;
final  String description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 20,
          right: 20,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 316,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text( title,
                    style:
                   const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                    Text(description,
                    style:const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:const Color(0xff0FA3E2)),
                      height: 57,
                      width: MediaQuery.of(context).size.width,
                      child:const Text(
                        'next',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
