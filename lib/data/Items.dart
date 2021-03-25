import 'package:flutter/material.dart';

class Items {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Items({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Items> data = [
  Items(
      id: 1,
      title: "Drum Stick",
      price: 250,
      size: 12,
      description: dummyText,
      image: "assets/images/img1.jpeg",
      color: Color(0xFFD3A984)),
  Items(
      id: 2,
      title: "Black chicken raw meat",
      price: 1500,
      size: 8,
      description: dummyText,
      image: "assets/images/img2.jpeg",
      color: Color(0xFFD3A984)),
  Items(
      id: 3,
      title: "Different cuts chicken",
      price: 230,
      size: 10,
      description: dummyText,
      image: "assets/images/img3.png",
      color: Color(0xFFD3A984)),
];

List<Items> data1 = [
  Items(
      id: 4,
      title: "Sea Fish",
      price: 350,
      size: 11,
      description: dummyText,
      image: "assets/images/img4.jpeg",
      color: Color(0xFFD3A984)),
  Items(
      id: 5,
      title: "Old Fish",
      price: 400,
      size: 12,
      description: dummyText,
      image: "assets/images/img5.jpg",
      color: Color(0xFFD3A984)),
  Items(
    id: 6,
    title: "Tore Fish",
    price: 500,
    size: 12,
    description: dummyText,
    image: "assets/images/img6.jpeg",
    color: Color(0xFFD3A984),
  ),
];

String dummyText ="In publishing and graphic design, Lorem ipsum is a placeholder"
    " text commonly used to demonstrate the visual form of a document or a typeface "
    "without relying on meaningful content.";