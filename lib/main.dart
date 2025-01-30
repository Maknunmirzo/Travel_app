import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/client.dart';
import 'package:travel_app/home_page/presentation/pages/home_page.dart';
import 'package:travel_app/onboarding/presentation/pages/onboarding_pages.dart';
import 'package:travel_app/package_detail/data/repositories/package_detail_repository.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';
import 'package:travel_app/package_detail/presentation/pages/package_view.dart';
import 'package:travel_app/register/presentation/pages/initial_page.dart';
import 'package:travel_app/register/presentation/pages/notice_page.dart';
import 'package:travel_app/register/presentation/pages/register_page.dart';
import 'package:travel_app/register/presentation/widgets/register_text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/detail",
        builder: (context, state) => PackageView(
          viewModel: PackageDetailViewModel(
            repo: context.read(),
          ),
        ),
      ),
      GoRoute(
        path: "/onboarding",
        builder: (context, state) => OnboardingPages(),
      ),
      GoRoute(
        path: "/homepage",
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) =>InitialPage(),
      ),
      GoRoute(
        name: "/notice",
        path: "/notice",
        builder: (context, state) =>NoticePage(),
      ),
      GoRoute(
        name: "register",
        path: "/register",
        builder: (context, state) =>RegisterPage(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => ApiClient()),
        Provider(
            create: (context) =>
                PackageDetailRepository(client: context.read(),)),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}
