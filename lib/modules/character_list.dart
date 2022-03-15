import 'package:breaking_bad/models/all_characters.dart';
import 'package:flutter/material.dart';

class CharacterItems extends StatelessWidget
{
  // final CharacterModel model;
  // const CharacterItems({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[400],
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/xo.png',
              ),
            ),
          ),
        ),
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child:  Text(
            'as',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              height: 1.3,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}


