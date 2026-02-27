import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String url;

  SlideInfo(this.title, this.caption, this.url);


}

final slides = <SlideInfo> [
  SlideInfo("Busca la comida", "caption", "assets/images/1.png"),
  SlideInfo("Busca la comida", "Tempor reprehenderit ullamco ullamco laboris laborum ad deserunt enim culpa sint. Minim cupidatat ea culpa qui Lorem eiusmod voluptate cillum aliqua dolor do laboris. Fugiat excepteur eiusmod amet sit dolor ut quis deserunt voluptate quis aliquip est. Velit eiusmod proident velit nulla in exercitation cillum excepteur ea laboris ullamco labore magna. Commodo nostrud exercitation dolor ut eiusmod aute duis ullamco culpa.", "assets/images/2.png"),
  SlideInfo("Busca la comida", "Mollit ad do magna proident irure est. Est magna irure esse laborum exercitation non. Cillum ea reprehenderit sint reprehenderit ad qui ex id.", "assets/images/3.png")
];
class AppTutorialScreen extends StatelessWidget {
  static const name = "app_tutorial_screen";

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: slides.map(
          (slideMap) => _Slide(slideMap.title, slideMap.caption, slideMap.url)
        ).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String url; 
  const _Slide(this.title, this.caption, this.url);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 10),
      child: Center(
        child: Column(
          children: [
            Image(image: AssetImage(url))
          ],
        ),
      ),
    );
  }
}