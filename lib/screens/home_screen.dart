import 'package:krishiai/screens/story_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krishiai/providers/chat_provider.dart';
import 'package:krishiai/screens/chat_history_screen.dart';
import 'package:krishiai/screens/chat_screen.dart';
import 'package:krishiai/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // list of screens
  final List<Widget> _screens = [
    const StoryScreen(),
    const ChatScreen(),
    const ChatHistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatProvider>(
      builder: (context, chatProvider, child) {
        return Scaffold(
          body: PageView(
            controller: chatProvider.pageController,
            children: _screens,
            onPageChanged: (index) {
              chatProvider.setCurrentIndex(newIndex: index);
            },
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: chatProvider.currentIndex,
            elevation: 0,
            backgroundColor: Theme.of(context).canvasColor,
            indicatorColor: Theme.of(context).colorScheme.primaryContainer,
            onDestinationSelected: (index) {
              chatProvider.setCurrentIndex(newIndex: index);
              chatProvider.pageController.jumpToPage(index);
              setState(() {});
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(CupertinoIcons.money_dollar),
                label: 'Stories',
              ),
              NavigationDestination(
                icon: Icon(CupertinoIcons.chat_bubble_2),
                label: 'Chat',
              ),
              NavigationDestination(
                icon: Icon(Icons.history),
                label: 'Chat History',
              ),
              NavigationDestination(
                icon: Icon(CupertinoIcons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
