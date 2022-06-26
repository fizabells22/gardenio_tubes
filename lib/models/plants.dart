// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';

// class Plants {
//   int id;
//   String namePlant;
//   String weeks;
//   DateFormat datePlant;
//   TimeOfDayFormat timePlant;

//   Plants(
//       {required this.id,
//       required this.namePlant,
//       required this.weeks,
//       required this.datePlant,
//       required this.timePlant});

// factory Plants.fromJson(Map<String, dynamic> json){
//   return Plants(id: json['id'], namePlant: json['name'], weeks: json['weeks'], datePlant: ['datePlant'.toString()], timePlant: ['timePlant']);
// }

// //   //------------------set plants to map-------------------

// //   Map<String, dynamic> plantToMap() {
// //     Map<String, dynamic> map = Map<String, dynamic>();
// //     map['id'] = this.id;
// //     map['name'] = this.name;
// //     map['howManyWeeks'] = this.howManyWeeks;
// //     map['plantsForm'] = this.plantsForm;
// //     map['time'] = this.time;
// //     map['notifyId'] = this.notifyId;
// //     return map;
// //   }

// //   //---------------------create plants object from map---------------------
// //   Plants plantMapToObject(Map<String, dynamic> map) {
// //     return Plants(
// //         id: map['id'],
// //         name: map['name'],
// //         howManyWeeks: map['howManyWeeks'],
// //         plantsForm: map['plantsForm'],
// //         time: map['time'],
// //         notifyId: map['notifyId']);
// //   }

// //   //---------------------| Get the plants image path |-------------------------
// //   String get image {
// //     switch (this.plantsForm) {
// //       case "Monstera":
// //         return "assets/images/1. monstera.jpg";
// //         break;
// //       case "Aloevera":
// //         return "assets/images/1. aloevera.jpg";
// //         break;
// //       case "Sansevieria":
// //         return "assets/images/1. sansevieria.jpg";
// //         break;
// //       case "Pothos":
// //         return "assets/images/1. pothos.jpg";
// //         break;
// //       case "Cactus":
// //         return "assets/images/1. cactus.jpg";
// //         break;
// //       case "Spider Plant":
// //         return "assets/images/1. spider plant.jpg";
// //         break;
// //       default:
// //         return "assets/images/1. peace lily.jpg";
// //         break;
// //     }
// //   }
// // }
