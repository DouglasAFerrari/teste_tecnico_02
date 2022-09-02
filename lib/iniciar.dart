import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pac_man/enemy/inimigo.dart';
import 'package:pac_man/player/player.dart';
import 'main.dart';

class iniciar extends StatefulWidget {
  const iniciar({Key? key}) : super(key: key);
  @override
  State<iniciar> createState() => iniciarState();
}
class iniciarState extends State<iniciar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: BonfireWidget(
        map: WorldMapByTiled(
          'maps/pac_man.json',
          forceTileSize: Vector2(tileSize, tileSize),
        ),
        player: PacPlayer(),
        enemies: [
          FantasmaEnemy(position: Vector2(tileSize * 27, tileSize * 8)),
          FantasmaEnemy(position: Vector2(tileSize * 26, tileSize * 8)),
          FantasmaEnemy(position: Vector2(tileSize * 27, tileSize * 9)),
          FantasmaEnemy(position: Vector2(tileSize * 26, tileSize * 9)),
        ],
        joystick: Joystick(
          keyboardConfig: KeyboardConfig(
            enable: true,
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows,
          ),
          directional: JoystickDirectional(),
        ),
      ),
    );
  }
}
