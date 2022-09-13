import 'package:flutter/material.dart';

class MessageModels{

  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModels({
   required this.name,
   required this.avatar, required this.time,
   required this.status
});
  static Icon statusOnline=Icon(
    Icons.phone_android_outlined,
    size: 20,
    color: Colors.green,
  );

  static Icon statusOffline=Icon(
    Icons.phone_android_outlined,
    size: 20,

  );


}

List<MessageModels> messageData=[
  MessageModels(
      name: "Riyazur Rohman Kawchar",
      avatar: "assets/image/myPhoto.png",
      time: "10:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "R Rohman Kawchar",
      avatar: "assets/image/myPhoto2.jpg",
      time: "10:20",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Rifat Shahariar Anik",
      avatar: "assets/image/anik.jpg",
      time: "01:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Faroque Azam Rafhyy",
      avatar: "assets/image/rafhy.jpg",
      time: "10:00",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Md Canon Hossain",
      avatar: "assets/image/canon.jpg",
      time: "10:20",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Md Sagor Khan",
      avatar: "assets/image/sagor.jpg",
      time: "03:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Tanvir Ahmed",
      avatar: "assets/image/tanvir.jpg",
      time: "11:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Ahsanul Hoque Sakib",
      avatar: "assets/image/sakib.jpg",
      time: "12:20",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Md Nayeem Hossain",
      avatar: "assets/image/nayeem.jpg",
      time: "01:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Al Mamun Saikot",
      avatar: "assets/image/mamun.jpg",
      time: "10:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Riyazur Rohman Kawchar",
      avatar: "assets/image/myPhoto.png",
      time: "10:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "R Rohman Kawchar",
      avatar: "assets/image/myPhoto2.jpg",
      time: "10:20",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Rifat Shahariar Anik",
      avatar: "assets/image/anik.jpg",
      time: "01:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Faroque Azam Rafhyy",
      avatar: "assets/image/rafhy.jpg",
      time: "10:00",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Md Canon Hossain",
      avatar: "assets/image/canon.jpg",
      time: "10:20",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Md Sagor Khan",
      avatar: "assets/image/sagor.jpg",
      time: "03:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Tanvir Ahmed",
      avatar: "assets/image/tanvir.jpg",
      time: "11:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Ahsanul Hoque Sakib",
      avatar: "assets/image/sakib.jpg",
      time: "12:20",
      status: MessageModels.statusOffline
  ),
  MessageModels(
      name: "Md Nayeem Hossain",
      avatar: "assets/image/nayeem.jpg",
      time: "01:20",
      status: MessageModels.statusOnline
  ),
  MessageModels(
      name: "Al Mamun Saikot",
      avatar: "assets/image/mamun.jpg",
      time: "10:20",
      status: MessageModels.statusOnline
  ),
];