import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomizeSlider extends StatefulWidget {
  List<String> images;

  CustomizeSlider(this.images, {Key? key}) : super(key: key);

  @override
  State<CustomizeSlider> createState() => _CustomizeSliderState();
}

class _CustomizeSliderState extends State<CustomizeSlider> {
  int activeIndex = 0;
  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: widget.images.length,
      effect: SlideEffect(
        dotHeight: 8,
        dotWidth: 8,
        dotColor: Color(0xFFD9D9D9),
        activeDotColor: Color(0xFFFF5A5F),
      ),
    );
  }

  Widget buildImage(String image, int index) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 3),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: CarouselSlider.builder(
                itemCount: widget.images.length,
                itemBuilder: (context, index, realIndex) {
                  final image = widget.images[index];
                  return buildImage(image, index);
                },
                options: CarouselOptions(
                  height: 120,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                )),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // SizedBox(
            //     //   height: 160,
            //     //   width: double.infinity,
            //     //   child: PageView.builder(
            //     //     controller: controller,
            //     //     onPageChanged: (index) {
            //     //       setState(() {
            //     //         currentIndex = index % images.length;
            //     //       });
            //     //     },
            //     //     itemBuilder: (context, index) {
            //     //       return Padding(
            //     //         padding: const EdgeInsets.symmetric(horizontal: 20),
            //     //         child: SizedBox(
            //     //           height: 300,
            //     //           width: double.infinity,
            //     //           child: Image.asset(
            //     //             images[index % images.length],
            //     //             fit: BoxFit.cover,
            //     //           ),
            //     //         ),
            //     //       );
            //     //     },
            //     //   ),
            //     // ),
            //     // SizedBox(
            //     //   height: 20,
            //     // ),
            //     // Row(
            //     //   mainAxisAlignment: MainAxisAlignment.center,
            //     //   children: [
            //     //     for (var i = 0; i < images.length; i++)
            //     //       buildIndicator(currentIndex == i)
            //     //   ],
            //     // ),
            //
            //     CarouselSlider(
            //       items: generatedImagesTiles(),
            //       carouselController: controller,
            //       options: CarouselOptions(
            //         enlargeCenterPage: true,
            //         autoPlay: true,
            //         aspectRatio: 22 / 8,
            //       ),
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //         children: indicators(images.length,activePage)),
            //       // children: images.asMap().entries.map((entry) {
            //       //   return GestureDetector(
            //       //     onTap: () => controller.animateToPage(currentIndex),
            //       //     child: Container(
            //       //       width: 6.0,
            //       //       height: 6.0,
            //       //       margin: EdgeInsets.symmetric(
            //       //           vertical: 6.0, horizontal: 4.0),
            //       //       decoration: BoxDecoration(
            //       //           shape: BoxShape.rectangle,
            //       //           color: (Theme.of(context).brightness ==
            //       //               Brightness.dark
            //       //               ? Colors.white
            //       //               : Colors.redAccent)
            //       //               .withOpacity(
            //       //               currentIndex == entry.key ? 0.8 : 0.4)),
            //       //     ),
            //       //   );
            //       // }).toList(),
            //
            //
            //   ],
            // ),
          ),
          SizedBox(height: 17),
          buildIndicator(),
        ],
      ),
    );
  }
}
