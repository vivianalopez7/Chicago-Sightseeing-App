// Project 1: Chicago Sightseeing App
// Course: CS 378, Spring 2025, UIC
// System: macOS Sonoma using Android Studio
// Student Author: Viviana Lopez
// Date: March 16, 2025

//this is the class that will be used for the Details page
class DetailsPageInfo {
  late String imagePath; //image path
  late String descrip; //description of image
  late String funFact; //fun fact about the image
  late String title; //title of the image
  late String tag; //tag of the Hero
  late String address; //street address of image
  late String otherPic; //if floating action button is clicked, this picture will appear

  //this is the constructor that included required named parameters
  DetailsPageInfo({required this.imagePath, required this.descrip, required this.funFact, required this.title, required this.tag, required this.address, required this.otherPic});
}