import 'package:flutter/cupertino.dart';
import 'package:math_game_b/src/core/app_constant.dart';

class TimeProvider with ChangeNotifier {
  TimeProvider(this._animationController, this.totalTime
   ) {
    _animationController = AnimationController(
        vsync: vsync, value: 1.0, duration: Duration(seconds: totalTime));
  }

  late final AnimationController _animationController;
  final int totalTime;
  DialogType dialogType = DialogType.non;
  TimerStatus timerStatus = TimerStatus.restart;

  void startTimer() {
    _animationController.reverse();
    
  }

  @override
  void dispose() {
    _animationController.dispose();
    timerStatus=TimerStatus.play;
    dialogType= DialogType.non;
    super.dispose();
  }
}
