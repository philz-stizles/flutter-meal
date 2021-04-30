import 'package:flutter/material.dart';

class ImageCaption extends StatelessWidget {
  final String imageUrl;
  final String caption;


  const ImageCaption({ @required this.imageUrl, @required this.caption });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: Image.network(
            imageUrl, 
            height: 250, 
            width: double.infinity, 
            fit: BoxFit.cover
          )
        ),
        Positioned( //This is like css position absolute
          bottom: 20,
          right: 10,
          child: Container(
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            color: Colors.black54,
            child: Text(
              caption, 
              style: TextStyle(fontSize: 26, color: Colors.white),
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ) //
      ],
    );
  }
}