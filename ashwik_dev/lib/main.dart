import 'package:ashwik_dev/theme/bloc/theme_cubit.dart';
import 'package:ashwik_dev/ui/home/home_page.dart';
import 'package:ashwik_dev/ui/retry/homepage_normal.dart';
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
        builder: (context, state) => const HomePageNormal(),
        routes: [
          GoRoute(path: 'home', builder: (context, state) => const HomePageNormal()),
          GoRoute(path: 'old', builder: (context, state) => const HomePage()),
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
                theme:ThemeData(useMaterial3: true),
                darkTheme: ThemeData.dark(useMaterial3: true),
                routerConfig: router,
              );
            },
          ),
        );
      },
    );
  }
}
