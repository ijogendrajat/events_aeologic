import 'package:flutter/material.dart';

class DetailsHero extends StatelessWidget {
  const DetailsHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.bookmark_outline_outlined))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/map.png"),
              fit: BoxFit.fitHeight),
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * (1.2 / 3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://bit.ly/3zh32Vh"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),

            //center details

            Positioned(
              top: 180,
              left: 40,
              right: 40,
              child: Container(
                width: 400,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Stack(
                  children: [
                    // Text("Fall Festival"),
                    // Positioned(
                    //   right: 50,
                    //   top: 30,
                    //   child: Container(
                    //     height: 20,
                    //     width: 80,
                    //     decoration: BoxDecoration(
                    //       color: Colors.blue[100],
                    //       borderRadius: BorderRadius.all(Radius.circular(2)),
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         "Party",
                    //         style: TextStyle(fontSize: 15, color: Colors.blue),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   right: 10,
                    //   top: 15,
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       Icons.favorite_border_outlined,
                    //       color: Colors.blue,
                    //     ),
                    //   ),
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Fall Festival",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                              ),
                              child: Center(
                                child: Text(
                                  "Party",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    //second row
                    Positioned(
                      left: 20,
                      top: 60,
                      child: Text(
                        "Ellicottville, New York",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 84,
                      child: Text(
                        "12 March, 10:39am",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),

                    //text scroll
                    Positioned(
                      bottom: 50,
                      child: SingleChildScrollView(
                        // for Vertical scrolling
                        scrollDirection: Axis.vertical,
                        child: Text(
                          "GeeksForGeeks is a good platform to learn programming."
                          " It is an educational website.",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //bottom button

            Positioned(
              bottom: 50,
              left: 50,
              right: 50,
              child: Container(
                width: 300,
                height: 40,
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Join",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
