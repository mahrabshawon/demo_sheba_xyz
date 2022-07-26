import 'dart:developer';

import 'package:demo_xyz/Model/SubCategory.dart';
import 'package:flutter/material.dart';
import 'Model/Category.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'SingleDetailsRoute.dart';

class AllServiceRoute extends StatefulWidget {
  int checkedIndex;

  List<Category> categories = Category.categories;
  List<SubCategory> subCategories = SubCategory.subCategories;

  AllServiceRoute(this.checkedIndex, {Key? key}) : super(key: key);

  @override
  State<AllServiceRoute> createState() => _AllServiceRouteState();
}

class _AllServiceRouteState extends State<AllServiceRoute> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "All services",
            style: TextStyle(
              fontSize: .5.cm,
              fontFamily: "InterR",
              color: Colors.black,
            ),
          ),
          backgroundColor:Color(0xFFFFB317),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: 12.h,
              child: GridView.builder(
//padding: const EdgeInsets.all(16),
                itemCount: widget.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(index, widget.categories);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: .9,
                ),
              ),
            ),
            Container(
              width: width - 12.h,
              //height: MediaQuery.of(context).size.height,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(color: Colors.white),
              child: detailsView(widget.checkedIndex, widget.subCategories),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCard(int index, List<Category> category) {
    bool checked = index == widget.checkedIndex;
    //String name = widget.categories[index].title;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.checkedIndex = index;
          //print(widget.checkedIndex);
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: checked ? Colors.white : Color(0xFFFFB317),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  category[index].image,
                  color: checked ? Color(0xFFFFB317)
                      : Colors.white,
                  height: 5.h,
                  width: 5.h,
                ),
                //const SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.fromLTRB(3, 3, 3, 0),
                  child: Text(
                    category[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      // color: Colors.black,
                      fontSize: .3.cm,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Positioned(
          //   top: 12,
          //   right: 12,
          //   child: Offstage(
          //     offstage: !checked,
          //     child: Container(
          //       decoration: BoxDecoration(
          //           color: Colors.white,
          //           border: Border.all(width: 2),
          //           shape: BoxShape.circle),
          //       child: Icon(
          //         Icons.check,
          //         color: Colors.red,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget detailsView(int checkedIndex, List<SubCategory> subCategories) {
    List<SubCategory> subCat = [];
    int totalItem = itemCounter(subCategories);
    int catId = widget.categories[widget.checkedIndex].cat_id;
    String title = widget.categories[catId].title;
    print("$catId   $title");
    setState(() {
      //widget.checkedIndex = index;
      subCat = item(subCategories);
    });
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        alignment: Alignment.topCenter,
        //height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(8),
                child: Text("$totalItem Services in $title")),
            Divider(),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: itemCounter(subCategories),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(0, .6.h, 0, .6.h),
                  child: ListTile(
                    leading: Image.asset(
                      subCat[index].image,
                      height: 10.h,
                      width: 10.h,
                    ),
                    onTap: () => {
                      print(subCat[index].serID.toString()),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          //subCategories[index].serID
                          builder: (context) =>
                              SingleDetailsRoute(subCat[index].serID.toInt()),
                        ),
                      ),
                    },
                    // trailing: Text(
                    //   "GFG",
                    //   style: TextStyle(color: Colors.green, fontSize: 15),
                    // ),
                    title: Text(subCat[index].title.toString()),
                  ),
                );
              },
            ),
            Container(
              child: divider(totalItem),
            ),
          ],
        ),
      ),
    );
  }

  Widget divider(int totalItem) {
    if (totalItem != 0) {
      return Divider();
    }
    return Container();
  }

  int itemCounter(List<SubCategory> services) {
    int itemCounter = 0;
    for (var i = 0; i < services.length; i++) {
      if (services[i].catID == widget.checkedIndex) {
        itemCounter = itemCounter + 1;
      }
    }
    return itemCounter;
  }

  List<SubCategory> item(List<SubCategory> services) {
    List<SubCategory> subCategory = [];
    //int itemCounter = 0;
    for (var i = 0; i < services.length; i++) {
      if (services[i].catID == widget.checkedIndex) {
        //itemCounter = itemCounter + 1;
        subCategory.add(services[i]);
      }
    }
    return subCategory;
  }
}