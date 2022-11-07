import 'package:flutter/animation.dart';
import 'package:math_game_b/src/core/app_constant.dart';
import 'package:math_game_b/ui/app/time_provider.dart';

class GameProvider extends TimeProvider{
   final GameCategoryType gameCategoryType;

  GameProvider ({required TickerProvider vsync,
   required this.gameCategoryType}): super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));
}