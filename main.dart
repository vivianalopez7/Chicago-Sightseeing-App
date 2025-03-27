// Project 1: Chicago Sightseeing App
// Course: CS 378, Spring 2025, UIC
// System: macOS Sonoma using Android Studio
// Student Author: Viviana Lopez
// Date: March 16, 2025

import 'package:flutter/material.dart';
import 'package:vlope22projectoneagain/details.dart' as DetailsPage;
import 'package:vlope22projectoneagain/detailspageclass.dart';

//stores the image paths for neighborhood tab
const String loopPic = 'assets/bean.jpg';
const String magMilePic = 'assets/magmile.jpg';
const String wickerParkPic = 'assets/wickerpark.jpg';

//stores the image paths for event tab
const String lollaPic = 'assets/lolla2.webp';
const String christKindPic = 'assets/christkind.jpg';
const String airAndWaterPic = 'assets/airandwater.webp';

//stores the image paths for sport tab
const String blackhawksPic = 'assets/blackhawks.webp';
const String bullsPic = 'assets/bulls.jpg';
const String bearsPic = 'assets/bears.jpg';

const List<String> neighborhoodTitles = ['Chicago Loop', 'Magnificent Mile', 'Wicker Park']; //titles in neighborhood tab
const List<String> eventTitles= ['Lollapalooza', 'Christkindl Market', 'Air and Water Show']; //titles in event tab
const List<String> sportTitles = ['Blackhawks', 'Bulls', 'Bears']; //titles in sport tab

//stores the descriptions of each option that is in the neighborhood tab
const List<String> neighborhoodDescrips = [
  "The Chicago Loop is the heart of downtown Chicago and the city’s central business district. It is known for its iconic architecture, landmarks, and attractions. In addition, it is home to the Chicago Riverwalk, Millennium Park, and the Willis Tower.",
  "The Magnificent Mile is known for having luxurious shops, upscale restaurants, and hotels in Michigan Avenue. Tourists also enjoy visiting this area because it is home to iconic landmarks such as the Chicago Water Tower, Tribune Tower, and John Hancock Center.",
  "Wicker Park is a popular and charming neighborhood in Chicago known for its thrilling nightlife, music venues, clubs, and bars. It is also home to many vintage stores, boutiques, and restaurants.",
];

//stores the descriptions of each option that is in the event tab
const List<String> eventDescrips = [
  "Lollapalooza is a world-famous music festival held in Grant Park. Founded by Perry Farrell, the four-day event features a diverse lineup of artists and music genres.",
  "Christkindlmarket is a traditional German holiday market located in Daley Plaza. With free admission, visitors can explore decorated booths, unique shops, live entertainment, and enjoy traditional German food.",
  "The Chicago Air and Water Show is a free event held along the Lake Michigan waterfront. It features thrilling aerial and water stunts performed by military and civilian pilots. One of the highlights is the U.S. Navy Blue Angels, who showcase a spectacular air show.",
];

//stores the descriptions of each option that is in the sport tab
const List<String> sportDescrips = [
  "The Chicago Blackhawks are a professional ice hockey team founded in 1926. They are one of the oldest teams in NHL history as they are one of the 'Original Six' teams. In addition, they have won six Stanley Cup championships.",
  "The Chicago Bulls are a professional basketball team founded in 1966. They are best known for their spectacular performance in the 1990s, led by iconic players such as Michael Jordan, Scottie Pippen, and Dennis Rodman.",
  "The Chicago Bears are a professional American football team founded in 1920. They are one of the oldest teams in NFL history and have won one Super Bowl in 1985.",
];

//stores the addresses of each option that is in the neighborhood tab
const List<String> neighborhoodAddresses = [
  "201 E Randolph St, Chicago, IL 60601",
  "625 N Michigan Avenue, Chicago, IL 60610",
  "1425 N Damen Ave, Chicago, IL 60622",
];

//stores the addresses of each option that is in the event tab
const List<String> eventAddresses = [
  "337 E Randolph Dr, Chicago, IL 60601",
  "50 W Washington St, Chicago, IL 60602",
  "1600 N Lake Shore Dr, Chicago, IL 60613",
];

//stores the addresses of each option that is in the sport tab
const List<String> sportAddresses = [
  "1901 W Madison St, Chicago, IL 60612",
  "1901 W Madison St, Chicago, IL 60612",
  "1410 Special Olympics Dr, Chicago, IL 60605",
];

//stores the fun facts of each option that is in the neighborhood tab
const List<String> neighborhoodFunFacts = [
  "The name of this neighborhood was inspired by the elevated 'L' train tracks that form a loop around downtown Chicago.",
  "The Water Tower Place is the first urban vertical mall in the United States.",
  "The show 'Shameless' and the NBC Chicago franchise filmed scenes in Wicker Park.",
];

//stores the fun facts of each option that is in the event tab
const List<String> eventFunFacts = [
  "Perry Farrell, the founder of Lollapalooza, heard the word 'Lollapalooza' in a Three Stooges movie and liked it so much that he decided to name the festival after it.",
  "The Christkindlmarket in Chicago has become one of the largest Christmas markets in the U.S., attracting over one million visitors annually.",
  "The Chicago Air and Water Show has become one of the largest air and water show in the U.S., attracting over one million visitors annually.",
];

//stores the fun facts of each option that is in the sport tab
const List<String> sportFunFacts = [
  "In 1944, the Chicago Blackhawks tied the Toronto Maple Leafs with a score of 0-0 which is a result that can never happen again under the new NHL rules. Thus, this was the only time it has happened in NHL history.",
  "The Chicago Bulls have won six NBA championships and Michael Jordan was a part of each championship team.",
  "When this team was founded in 1920, the name was originally Decatur Staleys before it was renamed to Chicago Bears.",
];

//stores the secondary image of each option that is in the neighborhood tab
const List<String> neighborhoodOtherPics = [
  "assets/trainloop.jpg",
  "assets/watertowerplace.avif",
  "assets/shameless.jpg"
];

//stores the secondary image of each option that is in the event tab
const List<String> eventOtherPics = [
  "assets/threestooges.jpg",
  "assets/xmaschrist.jpg",
  "assets/blueangels.jpg"
];

//stores the secondary image of each option that is in the sport tab
const List<String> sportOtherPics = [
  "assets/torontohockey.jpg",
  "assets/jordan.png",
  "assets/decatur.webp"
];

void main() {
  runApp(const MyApp()); //this runs the flutter application
}

//this is the MyApp class that extends StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  //this widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Welcome To Chicago'), //default route of the app
      routes: {
        '/details': (context) =>  DetailsPage.DetailsPage(title: "title",), //this is the details route and will go to the details page
      },

      debugShowCheckedModeBanner: false, //removes the debug banner
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.pink.shade300, //changes the background for all screens
        useMaterial3: true,
      ),
    );
  }
}

//this is the MyHomePage class that extends StatefulWidget
//this class is meant to represent the home screen
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); //constructor
  final String title; //title of the page
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//this is a private class for MyHomePage
//this customizes the home page by including options for the user to click as well as different tabs
class _MyHomePageState extends State<MyHomePage> {

  //this function displays certain options depending on the tab the user clicked
  //parameters: String image1, String image2, String image3, List<String> titles, List<String> descrips, List<String> addresses, List<String> funFacts, List<String> otherPics
  //return: Widget
  Widget tabInfo(String image1, String image2, String image3, List<String> titles, List<String> descrips, List<String> addresses, List<String> funFacts, List<String> otherPics) {
    String tagInfo = ''; //this stores the tag for the option
    return Center(
      //this displays three options to click
      child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //moves the row to the center
              children: [
                Padding(padding: EdgeInsets.all(13.0)), //padding in between the name of option and button

                //this applies the "fly-into" effect to the button
                Hero(
                  tag: 'firstPic',
                  //creates an elevated button
                  child: ElevatedButton(
                    //if the button is clicked, the navigator will push a new screen which means it will go to the details page
                    onPressed: () {
                      tagInfo = "firstPic"; //sets tagInfo to the current tag
                      Navigator.pushNamed(
                          context,
                          '/details',
                          arguments: DetailsPageInfo(imagePath: image1, descrip: descrips[0], funFact: funFacts[0], title: titles[0], tag: tagInfo, address: addresses[0], otherPic: otherPics[0]), //passes arguments to route
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, //this removes extra padding
                    ),
                    //this is customizing the image
                    child: Container(
                      width: 200, //fixed width for image
                      height: 100, //fixed height for image

                      //decorating the image by adding borders and shadows
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.pink.shade100, width: 5), //adds a pink border
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white, //sets color of shadow
                            blurRadius: 4, //sets blur radius of shadow
                            spreadRadius: 5, //sets the spread radius of shadow
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(image1), //sets the image to the image1 parameter
                          fit: BoxFit.cover, //covers the button with image
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 13),

                //this is contains the title for the first option
                Expanded(
                  child: Center(
                      child: Text(
                        titles[0], //if it's the first option, display the first element in titles array

                        //customizes the text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900, //makes the text extra bold
                          fontFamily: 'Courier',
                          shadows: [
                            //adds a shadow to the text
                            Shadow(
                              color: Colors.black,
                              blurRadius: 7,
                              offset: Offset(5, 3), //positions the shadow
                            ),
                          ],
                        ),
                        softWrap:true, textAlign: TextAlign.center, //this wraps and centers the text
                      )
                  ),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(40.0)), //this adds padding between first and second option
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //centers the row
              children: [
                Padding(padding: EdgeInsets.all(13.0)), //padding between text and button
                //this applies the "fly-into" effect to the button
                Hero(
                  tag: 'secondPic',
                  //this creates an elevated button
                  child: ElevatedButton(
                    //if the
                    onPressed: () {
                      tagInfo = "secondPic"; //sets tagInfo to the current tag
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: DetailsPageInfo(imagePath: image2, descrip: descrips[1], funFact: funFacts[1], title: titles[1], tag: tagInfo, address: addresses[1], otherPic: otherPics[1]), //passes arguments to the details route
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, //removes extra padding
                    ),
                    //this contains the image along with its customizations
                    child: Container(
                      width: 200, //fixed width for image
                      height: 100, //fixed height for image

                      //this adds a border to image along with shadow
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.pink.shade100, width: 5), //adds a pink border
                        boxShadow: [
                          //adds a shadow for the image
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 4,
                            spreadRadius: 5,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(image2), //sets the image to image2
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  //this contains the title for the second option
                  child: Center(
                      child: Text(
                        titles[1], //display the second element in the titles array
                        //customizes the name of the option
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Courier',
                          shadows: [
                            //adds a shadow to the text
                            Shadow(
                              color: Colors.black,
                              blurRadius: 7,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        softWrap:true, textAlign: TextAlign.center, //this wraps and centers the text
                      )
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(40.0)), //this adds padding between second and third option
            Row(
              mainAxisAlignment: MainAxisAlignment.center, //moves the row to the center
              children: [
                Padding(padding: EdgeInsets.all(13.0)),
                //this applies the "fly-into" effect to the button
                Hero(
                  tag: 'thirdPic',
                  //this creates an elevated button
                  child: ElevatedButton(
                    //if the button is clicked, the navigator will push a new screen which means it will go to the details page
                  onPressed: () {
                      tagInfo = "thirdPic"; //sets the tagInfo to the current tag
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: DetailsPageInfo(imagePath: image3, descrip: descrips[2], funFact: funFacts[2], title: titles[2], tag: tagInfo, address: addresses[2], otherPic: otherPics[2]), //this passes arguments to the details page
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, //removes extra padding
                    ),

                    //this contains the image along with customizations
                    child: Container(
                      width: 200,
                      height: 100,

                      //this adds a detailed border to the image
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.pink.shade100, width: 5),
                        boxShadow: [
                          //adds a shadow to the image
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 4,
                            spreadRadius: 5,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(image3), //sets the image to image3
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 13),

                //this contains the title for the third option
                Expanded(
                  child: Center(
                      child: Text(
                        titles[2], //sets the title to the third element in the titles array
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Courier',
                          shadows: [
                            //adds a shadow to the text
                            Shadow(
                              color: Colors.black,
                              blurRadius: 7,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        softWrap:true, textAlign: TextAlign.center, //wraps and centers text
                      )
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //creates the default tab controllers
    return DefaultTabController(
      length: 3, //three tabs
      child: Scaffold(
        //this is the appbar
        appBar: AppBar(
          backgroundColor: Colors.transparent,//this gets rid of the background in the appbar
          //this is decorating the title of the app bar
          title: Container(
            decoration: BoxDecoration(
              //customizes the shadow for the title
              boxShadow: [
                //adds a shadow to the title in appbar
                BoxShadow(
                  color: Colors.pink.shade200.withOpacity(0.4),
                  blurRadius: 6,
                  spreadRadius: 7,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            //sets the title and customizes it
            child: Text(
              'Welcome To Chicago', //title text

              //customizes title
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Courier',
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          centerTitle: true, toolbarHeight: 100, //centers text and increases the appbar's height

          //this customizes the border of appbar by rounding the edges
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Image.asset(
              'assets/skyline.jpg', //sets the appbar's image
              fit: BoxFit.cover,  //fills the appbar with image
            ),
          ),

          //creates the tab bar
          bottom: TabBar(
            tabs: [
              //customizes the first tab
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //aligns text to the center
                  children: [
                    Icon(Icons.home, color: Colors.pink.shade300), //sets the tab icon and changes the color of icon
                    SizedBox(width: 8), //space between text and icon

                    //sets the text of tab and customizes it
                    Text(
                      "Neighborhoods",

                      //customizes the text of tab bar title
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Courier',
                        shadows: [
                          //adds a shadow to the text
                          Shadow(
                            color: Colors.pink,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //second tab
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //aligns the tab
                  children: [
                    Icon(Icons.star, color: Colors.pink.shade300), //sets the tab's icon and icon color
                    SizedBox(width: 8), //creates space between icon and text

                    //this is the text of the tab
                    Text(
                      "Events",
                      //customizes the text of the second tab
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Courier',
                        shadows: [
                          //adds a shadow to the text
                          Shadow(
                            color: Colors.pink,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //third tab
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //centers the tab
                  children: [
                    Icon(Icons.sports_football, color: Colors.pink.shade300), //sets the icon and icon color
                    SizedBox(width: 8), //space between icon and text

                    //tab title for third tab
                    Text(
                      "Sports",
                      //customizes the text of the third tab
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Courier',
                        shadows: [
                          //adds a shadow the title of third tab
                          Shadow(
                            color: Colors.pink,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //this is the body of the tab
        body: TabBarView(
          children: [
            tabInfo(loopPic, magMilePic, wickerParkPic, neighborhoodTitles, neighborhoodDescrips, neighborhoodAddresses, neighborhoodFunFacts, neighborhoodOtherPics), //if first tab is clicked
            tabInfo(lollaPic, christKindPic, airAndWaterPic, eventTitles, eventDescrips, eventAddresses, eventFunFacts, eventOtherPics), //if second tab is clicked
            tabInfo(blackhawksPic, bullsPic, bearsPic, sportTitles, sportDescrips, sportAddresses, sportFunFacts, sportOtherPics), //if third tab is clicked
          ],
        ),
      ),
    );
  }
}