import 'package:bonfire/bonfire.dart';

class FantasmaSprite {

  static Future<SpriteAnimation> get IdleRight =>
      SpriteAnimation.load(
        'ghosts.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get IdleLeft =>
      SpriteAnimation.load(
        'ghosts.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get RunLeft =>
      SpriteAnimation.load(
        'ghosts.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(150, 0),
        ),
      );

  static Future<SpriteAnimation> get RunRight =>
      SpriteAnimation.load(
        'ghosts.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get RunUp =>
      SpriteAnimation.load(
        'ghosts.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(50, 0),
        ),
      );

  static Future<SpriteAnimation> get RunDown =>
      SpriteAnimation.load(
        'ghosts.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(100, 0),
        ),
      );

}