import 'package:flutter/material.dart';
import 'presentation/routes/app_routes.dart';
import 'presentation/pages/splash_page.dart';
import 'presentation/pages/auth/login_page.dart';
import 'presentation/pages/auth/register_page.dart';
import 'presentation/pages/tasks/task_list_page.dart';
import 'presentation/pages/tasks/task_detail_page.dart';
import 'presentation/pages/tasks/task_form_page.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TaskManagementApp());
}

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashPage(),
        AppRoutes.login: (context) => const LoginPage(),
        AppRoutes.register: (context) => const RegisterPage(),
        AppRoutes.taskList: (context) => const TaskListPage(),
        AppRoutes.taskDetail: (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map?;
          final id = args?['id'] ?? 0;
          return TaskDetailPage(taskId: id);
        },
        AppRoutes.taskForm: (context) => const TaskFormPage(),
      },
    );
  }
}
