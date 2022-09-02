import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pac_man/controllers/gerador_inimigos.dart';
import 'package:pac_man/iniciar.dart';

const double tileSize = 32;

void main() {
  BonfireInjector.instance.put((i) => FantasmaGeneratorController());
  runApp(
    const MaterialApp(
      home: iniciar(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
