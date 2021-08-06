import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_one/app/controllers/heros_controller.dart';
import 'package:provider_one/app/models/hero_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  _buildList() {
    HerosController herosController = Provider.of<HerosController>(context);

    return ListView.builder(
      itemBuilder: (_, index) {
        return _buildItems(herosController.heroes[index]);
      },
      itemCount: herosController.heroes.length,
    );
  }

  _buildItems(HeroModel hero) {
    HerosController herosController = Provider.of<HerosController>(context);

    return ListTile(
      onTap: () => herosController.handleStar(hero),
      title: Text(hero.name),
      trailing: hero.isFavorite
          ? Icon(
              Icons.star,
              color: Colors.yellow,
            )
          : Icon(
              Icons.star_border,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildList());
  }
}
