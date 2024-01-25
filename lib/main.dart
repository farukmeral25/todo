import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/init/providers.dart';
import 'package:todo_app/core/init/service_locator.dart' as locator;
import 'package:todo_app/core/utils/screen_size.dart';
import 'package:todo_app/todo_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await locator.init();
  ScreenSize.init();

  runApp(
    MultiProvider(
      providers: AppProvider.providers,
      child: const ToDoApp(),
    ),
  );
}
