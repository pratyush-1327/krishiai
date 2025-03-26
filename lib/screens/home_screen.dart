import 'package:finai/screens/story_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finai/providers/chat_provider.dart';
import 'package:finai/screens/chat_history_screen.dart';
import 'package:finai/screens/chat_screen.dart';
import 'package:finai/screens/profile_screen.dart';
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
          bottomNavigationBar: Consumer<ChatProvider>(
            builder: (context, chatProvider, child) {
              return BottomNavigationBar(
                currentIndex: chatProvider.currentIndex,
                elevation: 0,
                selectedItemColor: Theme.of(context).colorScheme.primary,
                unselectedItemColor: Theme.of(context).colorScheme.tertiary,
                onTap: (index) {
                  chatProvider.setCurrentIndex(newIndex: index);
                  chatProvider.pageController.jumpToPage(index);
                  setState(() {});
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.money_dollar),
                    label: 'Stories',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_2),
                    // icon: Icon(CupertinoIcons.timelapse),
                    label: 'Chat ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: 'Chat History',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person),
                    label: 'Profile',
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
