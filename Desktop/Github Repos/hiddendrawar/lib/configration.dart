import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow( blurRadius: 30, offset: Offset(0, 10), color: Colors.grey)
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'assest/cat.png'},
  {'name': 'Dogs', 'iconPath': 'assest/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'assest/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'assest/parrot.png'},
  {'name': 'Horses', 'iconPath': 'assest/horse.png'}
];

List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Adoption'
  },
  {
    'icon': Icons.mail,
    'title' : 'Donation'
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title' : 'Profile'
  },
];