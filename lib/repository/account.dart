import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pj/home.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_pj/main.dart';

import '../domain/domain.dart';

int _i = 1;

class AccountList {
  final int accid;
  final String title;
  final String context;
  final String paymanid;
  final int money;
  final int isCheckout;
  final int type;
  const AccountList({
    required this.accid,
    required this.title,
    required this.context,
    required this.paymanid,
    required this.money,
    required this.isCheckout,
    required this.type,
  });
  factory AccountList.fromJson(Map<String, dynamic> json) {
    dynamic context = json['context'];
    // print(json);
    if (context is! String) context = '';
    return AccountList(
      accid: json['accid'],
      title: json['title'],
      context: context,
      paymanid: json['paymanid'],
      money: json['money'],
      isCheckout: json['isCheckout'],
      type: json['type'],
      // status: json['status'],
    );
  }
}

class AccountRepo {
  Future<List<AccountList>> fetchAccount(String userid) async {
    var jsonResponse = null;

    var response = await http
        .get(Uri.parse(host + '/account/' + userid), headers: <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded',
    });

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);

      var result =
          jsonResponse.map((acoount) => AccountList.fromJson(acoount)).toList();
      print(jsonResponse);
      return result;
    }

    return [];
  }

  // bool isPasswordCompliant(String password, [int minLength = 6]) {
  //   if (password == null || password.isEmpty) {
  //     return false;
  //   }

  //   bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
  //   bool hasDigits = password.contains(new RegExp(r'[0-9]'));
  //   bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
  //   bool hasSpecialCharacters =
  //       password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  //   bool hasMinLength = password.length > minLength;

  //   return hasDigits &
  //       hasUppercase &
  //       hasLowercase &
  //       hasSpecialCharacters &
  //       hasMinLength;
  // }
}
