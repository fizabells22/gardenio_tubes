import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Pengguna {
  int id;
  String username;
  String email;
  String password;

  Pengguna(
      {required this.id,
      required this.username,
      required this.email,
      required this.password});

  factory Pengguna.fromJson(Map<String, dynamic> json) {
    return Pengguna(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        password: json['password']);
  }
}
