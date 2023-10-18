import 'package:flutter/material.dart';
import 'package:safar/login/presentation/component/dotindicator_component.dart';
import 'package:safar/login/presentation/screens/login_screen.dart';

class OnboardComponent extends StatelessWidget {
  const OnboardComponent(
      {super.key, required this.pageIndex, required this.function});

  final int pageIndex;
  final Function function;

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
                  demoData[pageIndex].image,
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
              color: Colors.white54,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    demoData[pageIndex].title,
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    demoData[pageIndex].description,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      pageIndex != 2
                          ? function()
                          : Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image:const DecorationImage(
                            image: AssetImage(
                              'assets/images/Rectangle 2.2.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                      height: 57,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        pageIndex != 2 ? 'next' : 'Skip',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          //right: MediaQuery.of(context).size.width / 2,
          left: MediaQuery.of(context).size.width / 2-20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                demoData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: DotIndicator(
                    isActive: index == pageIndex,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

// OnBoarding content list
final List<OnBoard> demoData = [
  OnBoard(
      image: 'assets/images/Onboarding_1.png',
      title: "Get ready for the\nnext trip",
      description:
          'Find thousans of tourist destinations\nready for you to visit'),
  OnBoard(
      image: 'assets/images/Onboarding_2.png',
      title: "Visit tourist\nattractions",
      description:
          'Find thousans of tourist destinations\nready for you to visit'),
  OnBoard(
      image: 'assets/images/Onboarding_3.png',
      title: "Lets explore the\nworld",
      description:
          'Find thousans of tourist destinations\nready for you to visit'),
];
