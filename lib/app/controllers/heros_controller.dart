import 'package:flutter/material.dart';
import 'package:provider_one/app/models/hero_model.dart';

class HerosController extends ChangeNotifier {
  List<HeroModel> heroes = [
    HeroModel(
      name: 'Thor',
    ),
    HeroModel(name: 'Iron man'),
    HeroModel(name: 'Captain America'),
    HeroModel(name: 'Batman', isFavorite: true)
  ];

  handleStar(HeroModel hero) {
    hero.isFavorite = !hero.isFavorite;
    notifyListeners();
  }
}
