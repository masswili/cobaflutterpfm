import 'dart:async';
import 'package:flutter/material.dart';

class AdsBox extends StatefulWidget {
  const AdsBox({Key? key}) : super(key: key);

  @override
  State<AdsBox> createState() => _AdsBoxState();
}

class _AdsBoxState extends State<AdsBox> {
  final PageController _pageController = PageController(initialPage: 0);
  List<String> imagePaths = [
    "assets/images/BNI_Promote.jpg",
    "assets/images/BNI_Promote(2).jpg",
    "assets/images/BNI_Promote(3).png",
  ];

  int currentPage = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // Set interval untuk menggeser gambar
    const Duration slideDuration = Duration(seconds: 3);
    timer = Timer.periodic(slideDuration, (_) {
      if (currentPage < imagePaths.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    timer.cancel(); // Hentikan timer ketika widget di-dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 150,
        margin: const EdgeInsets.all(8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
            Positioned(
              left: 16,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  if (_pageController.page != 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
                },
              ),
            ),
            Positioned(
              right: 16,
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  if (_pageController.page != imagePaths.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
