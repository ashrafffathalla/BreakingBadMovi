import 'package:breaking_bad/layout/cubit/cubit.dart';
import 'package:breaking_bad/layout/cubit/states.dart';
import 'package:breaking_bad/models/all_characters.dart';
import 'package:breaking_bad/modules/character_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BreakingBadLayout extends StatelessWidget {
  const BreakingBadLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BreakingBadCubit, BreakingBadStates>(
     listener: (context, state)
     {

     },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Breaking Bad'),
          ),
          body: CharacterItems(),
        );
      },
    );
  }


}
