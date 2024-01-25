import 'package:todo_app/core/utils/screen_size.dart';

extension NumExtension on num {
  double get h => ScreenSize().getHeight(this);
  double get w => ScreenSize().getWidth(this);
}
