// Project 1: Chicago Sightseeing App
// Course: CS 378, Spring 2025, UIC
// System: macOS Sonoma using Android Studio
// Student Author: Viviana Lopez
// Date: March 16, 2025

import 'package:flutter/material.dart';
import 'package:vlope22projectoneagain/detailspageclass.dart';

//this is the DetailsPage class that extends StatefulWidget
//this class is meant to represent the individual option screen
class DetailsPage extends StatefulWidget {
  final String title; //title of the page

  const DetailsPage({super.key, required this.title}); //DetailsPage constructor
  @override
  State<DetailsPage> createState() => _DetailsPage();
}

//this is a private class for DetailsPage
//this displays the information about the image/option
class _DetailsPage extends State<DetailsPage> {
  String imagePath  = ""; //stores the image shown on the page
  String currentText  = ""; //this will keep track if the image description or image fun fact appears

  int count = 0; //counts the number of times floating action button is clicked
  String buttonState = ""; //this changes the descriptor for the floating action button

  //this function will change the image and text (description or fun fact) shown on the page depending on the number of times the floating action button has been clicked
  //parameters: String originalImage, String descrip, String otherImage, String funFact
  void imageAndTextChange(String originalImage, String descrip, String otherImage, String funFact){
    setState(() {
      //if the button is divisible by 0, display the original image and description
      if (count % 2 == 0){
        imagePath = originalImage;
        currentText = descrip;
        buttonState = "Click here to see a fun fact ->"; //updates the descriptor
      }
      //otherwise, display the secondary image and fun fact
      else{
        imagePath = otherImage;
        currentText = "Fun fact: $funFact";
        buttonState = "Click here to see the description ->"; //updates the descriptor
      }
    });
  }

  //the build method is the root of the application and will be called when the state of the widget changes
  //parameters: BuildContext context
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as DetailsPageInfo; //this stores the arguments passed into the route
    imageAndTextChange(arguments.imagePath, arguments.descrip, arguments.otherPic, arguments.funFact);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, //this gets rid of the background in the appbar
        //this is the title of the app bar
        title: Container(
          decoration: BoxDecoration(
            //customizes the shadow for the title
            boxShadow: [
              BoxShadow(
                color: Colors.pink.shade200.withOpacity(0.4),
                blurRadius: 6,
                spreadRadius: 7,
                offset: Offset(0, 4),
              ),
            ],
          ),
          padding: EdgeInsets.all(10),
          //customizes the text for the title
          child: Text(
            arguments.title, //using the title retrieved from the arguments passed into route
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Courier',
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
            softWrap:true, textAlign: TextAlign.center, //wraps and centers the text
          ),
        ),
        centerTitle: true, //centers the title
        toolbarHeight: 100, //changes appbar height

        //customizes the flexible space of the appbar such as rounding the edges
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),

          //adds an image to appbar
          child: Image.asset(
            'assets/skyline.jpg',
            fit: BoxFit.cover,  //this makes the image fill the appbar
          ),
        ),

        leading: Material(
          color: Colors.transparent, //ensures there is no background behind the button
          //adds the back button to the appbar and customizes the icon
          child: IconButton(
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.black,
              size: 50,
              shadows: [
                //customizes shadow for icon button
                Shadow(
                  color: Colors.white,
                  blurRadius: 25,
                ),
              ],
            ),
            onPressed: () => Navigator.of(context).pop(), //if the back button is clicked, go to previous screen
          ),
        ),
      ),
      //this is the body of the page
      body: Center(
        //items related to option clicked such as image and text will be displayed vertically on page
        child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(15.0)),
              //this applies the "fly into" effect to the image
              Hero(
                tag: arguments.tag,
                child: Container(
                  width: 350, //fixed width for image
                  height: 200, //fixed height for image

                  decoration: BoxDecoration(
                    //customizes the border and shadow of the image
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.pink.shade100, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 4,
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)), //padding in between the image and title

              //the title that appears under the image
              Text(
                arguments.title,
                style: TextStyle(
                  decoration: TextDecoration.underline, //underlines the text
                  decorationColor: Colors.black, //changing color of the underline
                  decorationThickness: 1.5, //changing underline thickness

                  //customizes the title
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Courier',
                  shadows: [
                    //adds a shadow to title
                    Shadow(
                      color: Colors.black,
                      blurRadius: 20,
                    ),
                  ],
                ),
                softWrap:true, textAlign: TextAlign.center, //wraps and centers title
              ),
              Padding(padding: EdgeInsets.all(2.0)), //padding in between title and description/fun fact

              //this is the description of the image
              Container(
                padding: EdgeInsets.all(8.0), //adds padding to all edges of text
                child: Text(
                  currentText,
                  //customizes the text of the description
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Courier',
                    //adds shadow to description
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  softWrap:true, textAlign: TextAlign.center, //wraps and centers the description
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0)), //padding in between description/ fun fact and address header

              //this text represents the address header
              Text(
                "Address",
                style: TextStyle(
                  //underlining the text
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 1.5,

                  //customizes the text
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Courier',
                  shadows: [
                    //adds a shadow to the text
                    Shadow(
                      color: Colors.black,
                      blurRadius: 20,
                    ),
                  ],
                ),
                softWrap:true, textAlign: TextAlign.center, //this wraps and centers the text
              ),
              Padding(padding: EdgeInsets.all(2.0)), //this adds padding between the address header and address

              //this text represents the street address of option
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  arguments.address,
                  //this customizes the text for the street address
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Courier',
                    shadows: [
                      //this adds a shadow with customizations
                      Shadow(
                        color: Colors.black,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  softWrap:true, textAlign: TextAlign.center,
                ),
              ),
              Padding(padding: EdgeInsets.all(15.0)), //this adds padding between the street address and floating action button/descriptor

              Padding(
                padding: const EdgeInsets.only(right: 14.0), //moves row to the left from right
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, //aligns the row to the end
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0), //adds padding between descriptor and floating action button
                      child: Text(
                        buttonState, //this holds either the description and fun fact

                        //customizes the descriptor text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Courier',
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        softWrap:true, textAlign: TextAlign.center,
                      ),
                    ),
                    FloatingActionButton(
                      //when the button is pressed, it will increase the count by one and call the imageAndTextChange function
                      onPressed: () {
                        count++;
                        imageAndTextChange(arguments.imagePath, arguments.descrip, arguments.otherPic, arguments.funFact);
                      },
                      backgroundColor: Colors.white,   //changes the background color of button
                      foregroundColor: Colors.pink.shade300, //changes the icon color
                      elevation: 20, //elevates the button
                      child: Icon(Icons.info_rounded), //sets the icon
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}