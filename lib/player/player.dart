import 'dart:ui';
import 'package:bonfire/bonfire.dart';
import 'package:pac_man/player/player_sprite.dart';
import '../main.dart';

class PacPlayer extends SimplePlayer with ObjectCollision {
  PacPlayer()
      : super(
          life: 50,
          speed: 80,
          position: Vector2(
            29 * tileSize,
            13 * tileSize,
          ),
          size: Vector2(
            32,
            32,
          ),
          animation: SimpleDirectionAnimation(
            idleRight: PlayerSprite.heroIdleRight,
            runRight: PlayerSprite.heroRunRight,
            idleLeft: PlayerSprite.heroIdleRight,
            runLeft: PlayerSprite.heroRunLeft,
            runUp: PlayerSprite.heroRunUp,
            runDown: PlayerSprite.heroRunDown,
          ),

        ) {
    setupCollision(
      CollisionConfig(
        enable: true,
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(28, 28),
            align: Vector2(2, 2),
          ),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    simpleAttackMelee(
      damage: 100,
      size: Vector2(40, 40),
      direction: lastDirection,
      withPush: true,
    );
    super.update(dt);
  }

}
