

// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';



final appRouter = GoRouter(
  initialLocation: "/",
  routes: [    
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.name,
      builder: (context, state) => CardScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui_controls',
      name: UiControlScreen.name,
      builder: (context, state) => UiControlScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    ),
    GoRoute(
      path: '/counter-river',
      name: CounterScreen.name,
      builder: (context, state) => CounterScreen(),
    ),
    GoRoute(
      path: '/theme-changer',
      name: ThemeChangeScreen.name,
      builder: (context, state) => ThemeChangeScreen(),
    )
  ],
);