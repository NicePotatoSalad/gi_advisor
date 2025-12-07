import 'package:go_router/go_router.dart';
import 'package:genshin_advisor/presentation/pages/home_page.dart';
import 'package:genshin_advisor/presentation/pages/character_detail_page.dart';
import 'package:genshin_advisor/presentation/pages/chat_page.dart';
import 'package:genshin_advisor/presentation/pages/settings_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/character/:characterKey',
      name: 'character_detail',
      builder: (context, state) {
        final characterKey = state.pathParameters['characterKey']!;
        return CharacterDetailPage(characterKey: characterKey);
      },
    ),
    GoRoute(
      path: '/chat/:characterKey',
      name: 'chat',
      builder: (context, state) {
        final characterKey = state.pathParameters['characterKey']!;
        return ChatPage(characterKey: characterKey);
      },
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);

