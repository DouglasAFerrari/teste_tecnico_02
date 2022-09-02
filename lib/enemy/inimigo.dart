import 'package:bonfire/bonfire.dart';
import 'package:pac_man/enemy/inimigo_sprite.dart';
import 'package:pac_man/main.dart';
import 'package:pac_man/controllers/gerador_inimigos.dart';

class FantasmaEnemy extends SimpleEnemy
    with ObjectCollision, UseStateController<FantasmaGeneratorController> {
  FantasmaEnemy({
    required Vector2 position,
  })
     : super(
          position: position,
          size: Vector2(32, 32),
          speed: 50,
          initDirection: Direction.left,
          animation: SimpleDirectionAnimation(
            idleRight: FantasmaSprite.IdleRight,
            idleLeft: FantasmaSprite.IdleLeft,
            runRight: FantasmaSprite.RunRight,
            runLeft: FantasmaSprite.RunLeft,
          ),
          life: 50,
        ) {
    setupCollision(
      CollisionConfig(
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
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(
          damage: 0,
          size: Vector2(40, 40),
          direction: lastDirection,
          withPush: true,
        );
      },
      radiusVision: tileSize * 40,
    );
    super.update(dt);
  }

  @override
  void die() {
    //controller.respawnMany();
    //removeFromParent();
    //super.die();
  }
}
