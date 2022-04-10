import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var _username = ["username"];
var _password = ["password123"];

int _i = 1;

class Res {
  final String status;
  const Res({required this.status});
  factory Res.fromJson(Map<String, dynamic> json) {
    return Res(
      status: json['status'],
    );
  }
}

class Authentication {
  Future<bool> fetchCredentials(String username, String password) async {
    var jsonResponse = null;
    var response = await http
        .post(Uri.parse('http://127.0.0.1/login'), headers: <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded',
    }, body: {
      'username': username,
      'password': password,
    });

    if (response.statusCode == 200) {
      jsonResponse = Res.fromJson(jsonDecode(response.body));
      print(jsonResponse.status);
      if (jsonResponse.status == 'ok') {
        return true;
      }
    }

    return false;
  }

  bool checkUserRepeat(username) {
    for (var j = 0; j < _username.length; j++) {
      if (username == _username[j]) {
        print(username);
        return true;
      }
    }
    return false;
  }

  void insertCredentials(username, password) {
    _username.add(username);
    _password.add(password);
    _i++;
  }

  bool isPasswordCompliant(String password, [int minLength = 6]) {
    if (password == null || password.isEmpty) {
      return false;
    }

    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = password.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length > minLength;

    return hasDigits &
        hasUppercase &
        hasLowercase &
        hasSpecialCharacters &
        hasMinLength;
  }
}
