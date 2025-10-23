import 'package:ashwik_dev/theme/bloc/theme_cubit.dart';
import 'package:ashwik_dev/theme/theme.dart';
import 'package:ashwik_dev/ui/home/homepage_normal.dart';
import 'package:ashwik_dev/ui/test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ashwik_dev/ui/di/di.dart' as di;
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.setupDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Test(),
        routes: [
          GoRoute(path: 'home', builder: (context, state) => const HomePageNormal()),
          GoRoute(path: 'test', builder: (context, state) => const Test()),

        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1050),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => di.sl<ThemeCubit>()),
          ],
          child: BlocConsumer<ThemeCubit, ThemeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp.router(
                title: 'Ashwik',
                debugShowCheckedModeBanner: false,
                theme: lightThemeData, // Default theme
                darkTheme: darkThemeData, // Dark theme definition
                themeMode: ThemeMode.system,
                routerConfig: router,
              );
            },
          ),
        );
      },
    );
  }
}
