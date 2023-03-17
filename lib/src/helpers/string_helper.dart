import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:flutter/material.dart';

class StringHelper {
  StringHelper._();

  static String creditCardFormatter(String card) {
    return '**** **** ${card.substring(8, 12)} ${card.substring(12, card.length)}';
  }

  static String getBalance(double amount) => '\$${amount.toStringAsFixed(2)}';
}

class UserHelper {
  static String getFullName(UserDetails? user) {
    return '${user?.firstname ?? '--'} ${user?.lastname ?? ''}';
  }

  // Returns initials of first and last name
  static String getInitials(UserDetails? user) {
    return '${user?.firstname?.split('').first ?? '-'}${user?.lastname?.split('').first ?? '-'}';
  }
}
