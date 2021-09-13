import 'package:flutter/material.dart';
import 'package:food_bytes/models/categoryModel.dart';
import 'package:food_bytes/models/customerReviewModel.dart';
import 'package:food_bytes/models/notificationModel.dart';
import 'package:food_bytes/models/recipiesModel.dart';
import 'package:food_bytes/models/reviewModel.dart';

List avatarModel = [
  'assets/images/person4.jpg',
  'assets/images/person6.jpg',
  'assets/images/person7.jpg',
  'assets/images/person9.jpg',
];
List<CategoryModel> categoryModel = [
  CategoryModel(
      title: 'Chines',
      image: 'assets/images/chineesFood.jpg',
      color1: Colors.orangeAccent,
      color2: Colors.orange),
  CategoryModel(
      title: 'Italian',
      image: 'assets/images/italinFood.jpg',
      color1: Colors.greenAccent,
      color2: Colors.green),
  CategoryModel(
      title: 'Maxican',
      image: 'assets/images/maxicanFood.jpg',
      color1: Colors.purpleAccent,
      color2: Colors.purple),
  CategoryModel(
      title: 'Pakistani',
      image: 'assets/images/Recipe1.png',
      color1: Colors.indigoAccent,
      color2: Colors.indigo),
];

List<RecipiesModel> recipiesModel = [
  RecipiesModel(
    title: 'Happy Bones',
    subTitle: '394 Broome St, New York, NY 10013, USA',
    image: 'assets/images/Recipe1.png',
    option: 'Open',
    type: 'Italian',
    distance: '1.2 km',
    rating: '4.5',
  ),
  RecipiesModel(
    title: 'Uncle Boons',
    subTitle: '7 Spring St, New York, NY 10012, USA',
    image: 'assets/images/chineesFood.jpg',
    option: 'Open',
    type: 'Italian',
    distance: '1.2 km',
    rating: '4.5',
  ),
  RecipiesModel(
    title: 'Uncle Boons',
    subTitle: '7 Spring St, New York, NY 10012, USA',
    image: 'assets/images/chineesFood.jpg',
    option: 'Open',
    type: 'Italian',
    distance: '1.2 km',
    rating: '4.5',
  ),
];

List<CustomerReviewModel> customerReviewModel = [
  CustomerReviewModel(
      image: 'assets/images/person.png',
      name: 'Faheem',
      title: 'Flutter Developer',
      rating: '2.4'),
  CustomerReviewModel(
      image: 'assets/images/person2.jpg',
      name: 'Sarah',
      title: 'Mobile Developer',
      rating: '2.4'),
  CustomerReviewModel(
      image: 'assets/images/person3.jpg',
      name: 'Hamid',
      title: 'Web Developer',
      rating: '2.4'),
];

List<NotificationModel> notificationModel = [
  NotificationModel(
      image: 'assets/images/person4.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person7.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person9.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person10.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person4.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person7.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person9.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
  NotificationModel(
      image: 'assets/images/person10.jpg',
      title: 'Faheem Rahman',
      subtitle: 'Start following you',
      time: '5:30 am'),
];

List<ReviewModel> reviewModel = [
  ReviewModel(
      image: 'assets/images/person9.jpg',
      name: 'Faheem Rahman',
      title: 'I like this food the is very delicious, I recommend to you',
      rating: '2.3'),
  ReviewModel(
      image: 'assets/images/person10.jpg',
      name: 'Asad',
      title: 'I like this food the is very delicious, I recommend to you',
      rating: '4.3'),
  ReviewModel(
      image: 'assets/images/person4.jpg',
      name: 'Osama',
      title: 'I like this food the is very delicious, I recommend to you',
      rating: '1.2'),
];
