import 'package:bonfire/bonfire.dart';

class PlayerSprite {
  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
      'pacmanSpriteSheet.png',
      SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(0, 0),
      ),
  );
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
      'pacmanSpriteSheet.png',
      SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(0, 0),
  ),
  );
  static Future<SpriteAnimation> get heroRunLeft => SpriteAnimation.load(
      'pacmanSpriteSheet.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(450, 0),
  ),
  );
  static Future<SpriteAnimation> get heroRunRight => SpriteAnimation.load(
      'pacmanSpriteSheet.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.15,
          textureSize: Vector2(50, 50),
          texturePosition: Vector2(0, 0),
  ),
  );
  static Future<SpriteAnimation> get heroRunUp => SpriteAnimation.load(
    'pacmanSpriteSheet.png',
    SpriteAnimationData.sequenced(
      amount: 3,
      stepTime: 0.15,
      textureSize: Vector2(50, 50),
      texturePosition: Vector2(150, 0),
    ),
  );
  static Future<SpriteAnimation> get heroRunDown => SpriteAnimation.load(
    'pacmanSpriteSheet.png',
    SpriteAnimationData.sequenced(
      amount: 3,
      stepTime: 0.15,
      textureSize: Vector2(50, 50),
      texturePosition: Vector2(300, 0),
    ),
  );
  static Future<SpriteAnimation> get die => SpriteAnimation.load(
    'gameoverButton.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.15,
      textureSize: Vector2(50, 50),
      texturePosition: Vector2(50, 50),
    ),
  );




}
