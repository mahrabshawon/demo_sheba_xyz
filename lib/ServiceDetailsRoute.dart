
import 'package:flutter/material.dart';

import 'Model/Category.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServicesDetailsRoute extends StatefulWidget {
  const ServicesDetailsRoute({Key? key}) : super(key: key);

  @override
  State<ServicesDetailsRoute> createState() => _ServicesDetailsRouteState();
}

class _ServicesDetailsRouteState extends State<ServicesDetailsRoute> {
  int defaultValue = 0;
  List<Category> services = Category.categories;
  late int value;
  @override
  void initState() {
    value = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "All services",
            style: TextStyle(
              fontSize: 24,
              fontFamily: "InterR",
              color: Color(0xFFFFFFFF),
            ),
          ),
          backgroundColor: Color(0xFFFF5A5F),
        ),
      ),
      body: Container(
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              width: 80.h,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFFF5A5F),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 90,
                    childAspectRatio: 1,
                    //crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: services.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(index);
                },
              ),
            ),
            //serviceCatScroller(services),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget buildCard(int index) {
    return Container(
      alignment: Alignment.center,
      //margin: const EdgeInsets.all(15.0),
      //padding: const EdgeInsets.all(3.0),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(width: 1.0, color: Color(0xFFFF5A5F)),
          bottom: BorderSide(width: 1.0, color: Colors.white),
        ),
      ),
      child: GestureDetector(
        onTap: () => {index},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(services[index].image),
            const SizedBox(height: 5),
            Text(
              services[index].title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                // color: Colors.black,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
      // child: Text(services[index].title),
      // decoration: BoxDecoration(
      //     color: Colors.amber,
      //     borderRadius: BorderRadius.circular(15)),
    );
  }
}

// Widget serviceCatScroller(List<Category> services) {
//   return Container(
//     child: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 90,
//             childAspectRatio: 1,
//             //crossAxisSpacing: 5,
//             mainAxisSpacing: 5),
//         itemCount: services.length,
//         itemBuilder: (BuildContext ctx, index) {
//
//         }),
//   );
// }
