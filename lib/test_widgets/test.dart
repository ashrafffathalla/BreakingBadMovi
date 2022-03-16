
import 'package:breaking_bad/layout/cubit/cubit.dart';
import 'package:breaking_bad/layout/cubit/states.dart';
import 'package:breaking_bad/models/all_characters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestWidget extends StatelessWidget
{

 //const TestWidget({Key? key,required this.characterModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BreakingBadCubit, BreakingBadStates>(
      listener: (context, state)
      {

      },
      builder: (context, state)
      {
       return Scaffold(
          body: buildGridView(BreakingBadCubit.get(context).characterModel!),
        );
      },
    );
  }
  Widget buildGridView(List<CharacterModel> list)=>GridView.count(
    crossAxisCount: 2,
    childAspectRatio: 2 / 3,
    crossAxisSpacing: 12,
    mainAxisSpacing:12,
    physics:BouncingScrollPhysics() ,
    children: List.generate(
      10,
          (index) =>  buildGrid(),
    ),
  );
  /////////
  Widget buildGrid()=>Container(
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
          'model.name',
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
