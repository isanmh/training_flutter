import 'package:flutter/material.dart';

const reqURL = "https://reqres.in/api/users";
const productURL = "https://dummyjson.com/products";
const notesURL = "https://6aacb193a2413bf0ec10f299.mockapi.io/api/v1/notes";

// static widget
showSnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}
