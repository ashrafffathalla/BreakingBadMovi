import 'package:breaking_bad/modules/charecter_item.dart';
import 'package:flutter/material.dart';

class BreakingBadLayout extends StatelessWidget {
  const BreakingBadLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breaking Bad'),
      ),
      body: buildCharactersList(),
    );
  }

  Widget buildCharactersList()
  {
    return GridView.builder(

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context ,index)
      {
        return CharacterItems();
      },
    );
  }
}
