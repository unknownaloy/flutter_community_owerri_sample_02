import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/pet_card.dart';
import 'package:flutter_community_owerri_week_02/components/pet_tile.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            )
          ];
        },
        body: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SizedBox(
                height: 96.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PetTile(petName: "Dog"),
                    PetTile(petName: "Cat"),
                    PetTile(petName: "Squirrel"),
                    PetTile(petName: "Rabbit"),
                    PetTile(petName: "Bird"),
                    PetTile(petName: "Dog"),
                    PetTile(petName: "Cat"),
                    PetTile(petName: "Squirrel"),
                    PetTile(petName: "Rabbit"),
                    PetTile(petName: "Bird"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  children: const [
                    PetCard(),
                    SizedBox(
                      height: 16.0,
                    ),
                    PetCard(),
                    SizedBox(
                      height: 16.0,
                    ),
                    PetCard(),
                    SizedBox(
                      height: 16.0,
                    ),
                    PetCard(),
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
