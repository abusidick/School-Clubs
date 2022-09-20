import 'package:flutter/material.dart';

class Club {
  final String image, title, category, description;
  final int id;
  final Color color;

  Club(
      {required this.id,
      required this.title,
      required this.category,
      required this.description,
      required this.image,
      required this.color});
}

List<Club> Clubs = [
  Club(
      id: 1,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 2,
      title: "KnustHub",
      category: "Media",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/peopleentertainment.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 3,
      title: "Coding HUb",
      category: "Technology",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 4,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 5,
      title: "Women In Science",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      category: "Women",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 6,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 7,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 8,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
];

List<Club> ClubsJoined = [
  Club(
      id: 1,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 2,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/peopleentertainment.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 3,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 4,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 5,
      title: "Women In Science",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      category: "Women",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 6,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 7,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
  Club(
      id: 8,
      title: "Women In Science",
      category: "Women",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin posuere neque elit, sed condimentum eros accumsan et. Nunc turpis felis, fermentum quis ipsum eget, dictum sollicitudin nibh. Sed eget ex.",
      image: 'images/People.png',
      color: Color(0xFF3D82AE)),
];
