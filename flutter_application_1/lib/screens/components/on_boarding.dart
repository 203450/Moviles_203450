import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/view.dart';
import 'package:flutter_application_1/pages/view2.dart';
import 'package:flutter_application_1/pages/view3.dart';
import 'package:flutter_application_1/pages/view4.dart';
import 'package:flutter_application_1/screens/components/content_boarding.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  late PageController varController;

  @override
  void initState() {
    super.initState();
    varController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    varController.dispose();
  }

  List<Map<String, String>> listBoarding = [
    {
      "titulo": "ESPARCIMIENTO",
      "imagen": "assets/images/B1.png",
      "descripcion": "Texto de ejemplo",
    },
    {
      "titulo": "ADOPCION",
      "imagen": "assets/images/B2.png",
      "descripcion": "Texto de ejemplo",
    },
    {
      "titulo": "HOSPITALIDAD",
      "imagen": "assets/images/B3.png",
      "descripcion": "Texto de ejemplo",
    },
    {
      "titulo": "VETERINARIA",
      "imagen": "assets/images/B4.png",
      "descripcion": "Texto de ejemplo",
    },
    {
      "titulo": "TIENDA",
      "imagen": "assets/images/B5.png",
      "descripcion": "Texto de ejemplo",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 600,
            child: PageView.builder(
              controller: varController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (context, index) => ContentBoarding(
                text: listBoarding[index]['titulo'],
                image: listBoarding[index]['imagen'],
                descripcion: listBoarding[index]['descripcion'],
              ),
              itemCount: listBoarding.length,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(listBoarding.length,
                (index) => pages(index: index, currentePage: currentPage)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: MaterialButton(
                        color: currentPage == listBoarding.length - 1
                            ? Colors.green
                            : Colors.white,
                        onPressed: () async {
                          currentPage == listBoarding.length - 1
                              ? Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const HomePage()))
                              : varController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                        },
                        textColor: currentPage == listBoarding.length - 1
                            ? Colors.white
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                            currentPage == listBoarding.length - 1
                                ? 'Continuar'
                                : "Siguiente",
                            style: const TextStyle(fontSize: 16)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

AnimatedContainer pages({required int index, required int currentePage}) {
  return AnimatedContainer(
    margin: const EdgeInsets.only(right: 5),
    width: currentePage == index ? 30 : 20,
    height: 5,
    duration: kThemeAnimationDuration,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: currentePage == index
            ? Colors.pink
            : const Color.fromARGB(255, 175, 171, 171)),
  );
}
