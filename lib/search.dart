import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:aplikasi_project/DetailTravel.dart';
import 'package:aplikasi_project/model/place_items.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return TravelPlaceList();
              } else if (constraints.maxWidth <= 1200) {
                return TravelPlaceGrid(gridCount: 4);
              } else {
                return TravelPlaceGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class TravelPlaceGrid extends StatelessWidget {
  final int gridCount;

  TravelPlaceGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: tourismPlaceList.map((place) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailTravel(place: place);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        place.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        place.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        place.location,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TravelPlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          height: deviceHeight * 0.25,
          width: deviceWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        "Hello, Idris!",
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 8,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 12,
                            color: Colors.black87,
                          ),
                          AutoSizeText(
                            "Jakarta, Indonesia",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.5),
                  color: Color.fromRGBO(220, 220, 220, 150),
                ),
                padding: EdgeInsets.all(5),
                height: 45,
                width: deviceWidth * 0.30,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      height: 50,
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(
                            color: Colors.black, fontFamily: "Poppins"),
                        filled: true,
                        contentPadding: EdgeInsets.all(5),
                        hintText: 'Search destinations...',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: deviceWidth * 0.25,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                        child: Center(
                          child: AutoSizeText(
                            "All",
                            style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blueAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.25,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                        child: Center(
                          child: AutoSizeText(
                            "Promo",
                            style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(808080).withOpacity(0.3),
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.25,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                        child: Center(
                          child: AutoSizeText(
                            "Latest",
                            style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(808080).withOpacity(0.3),
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.25,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                        child: Center(
                          child: AutoSizeText(
                            "Popular",
                            style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(808080).withOpacity(0.3),
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.25,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                        child: Center(
                          child: AutoSizeText(
                            "Highest Price",
                            style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(808080).withOpacity(0.3),
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.25,
                        height: 20,
                        margin: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                        child: Center(
                          child: AutoSizeText(
                            "Lowest Price",
                            maxLines: 1,
                            style: TextStyle(
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(808080).withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final TravelPlace place = tourismPlaceList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailTravel(place: place);
                        }));
                      },
                      child: Stack(
                        children: [
                          Card(
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1,
                              ),
                            ),
                            child: Container(
                              height: deviceHeight * 0.15,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Container(
                                    width: deviceWidth * 0.40,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          place.imageAsset,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FittedBox(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  size: 10,
                                                  color: Colors.grey[700],
                                                ),
                                                FittedBox(
                                                  child: AutoSizeText(
                                                    place.location,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.grey[700],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          FittedBox(
                                            child: AutoSizeText(
                                              place.name,
                                              maxLines: 1,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: SizedBox.fromSize(
                                                  size: Size.fromRadius(8),
                                                  child: FittedBox(
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              FittedBox(
                                                child: AutoSizeText(
                                                  "4.7",
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 15,
                                                width: 20,
                                                child: VerticalDivider(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              FittedBox(
                                                child: AutoSizeText(
                                                  "123 reviews",
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          FittedBox(
                                            child: AutoSizeText(
                                              "Rp." + place.price,
                                              maxLines: 1,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Poppins',
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: tourismPlaceList.length,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
