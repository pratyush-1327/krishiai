import 'package:chatbotapp/stories/insurance.dart';
import 'package:chatbotapp/stories/mutualfund.dart';
import 'package:chatbotapp/stories/ppf.dart';
import 'package:chatbotapp/stories/stocks.dart';
import 'package:chatbotapp/stories/tax.dart';
import 'package:chatbotapp/widgets/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:chatbotapp/screens/chat_screen.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: const Text(
          'FinAi - AI Financial Advisor',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: 600, // Set a height for the grid
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  CategoriesCardWidget(
                      image:
                          'https://i.pinimg.com/736x/3f/07/ec/3f07ec2d3d5558a83086f564b0c23f47.jpg',
                      title: 'Mutual Funds',
                      category: "",
                      destination: const Mutualfund()),
                  CategoriesCardWidget(
                      image:
                          'https://i.pinimg.com/736x/79/68/74/7968740973b0b6dd1b4668fdae827ad7.jpg',
                      title: 'Stocks',
                      category: "",
                      destination: const Stocks()),
                  CategoriesCardWidget(
                      image:
                          'https://i.pinimg.com/736x/f3/aa/ac/f3aaac4ec2c1b28d0985603a7268c626.jpg',
                      title: 'Tax Saving',
                      category: "",
                      destination: const Tax()),
                  CategoriesCardWidget(
                      image:
                          'https://i.pinimg.com/736x/78/63/c1/7863c1de016b2cecfbff4985ef321cfe.jpg',
                      title: 'Insurance',
                      category: "",
                      destination: const Insurance()),
                  CategoriesCardWidget(
                      image:
                          'https://i.pinimg.com/736x/57/5a/23/575a239f458f4c4e661db7a3e027542e.jpg',
                      title: 'PPF',
                      category: "",
                      destination: const Ppf()),
                  CategoriesCardWidget(
                      image:
                          'https://i.pinimg.com/736x/3d/40/e6/3d40e65295b74559cc150660a509cb4f.jpg',
                      title: 'Finances',
                      category: "",
                      destination: const ChatScreen()),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
