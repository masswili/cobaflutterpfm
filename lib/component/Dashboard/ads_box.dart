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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 200,
        margin: const EdgeInsets.all(8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                  width: double.infinity, // Mengisi lebar kontainer
                  height: double.infinity, // Mengisi tinggi kontainer
                );
              },
            ),
            Positioned(
              left: 16, // Posisi tanda panah kiri
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
              right: 16, // Posisi tanda panah kanan
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
