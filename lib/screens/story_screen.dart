import 'package:krishiai/stories/insurance.dart';
import 'package:krishiai/stories/mutualfund.dart';
import 'package:krishiai/stories/ppf.dart';
import 'package:krishiai/stories/stocks.dart';
import 'package:krishiai/stories/tax.dart';
import 'package:krishiai/widgets/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:krishiai/screens/chat_screen.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      //   centerTitle: true,
      //   title: const Text(
      //     'krishiai - AI Financial Advisor',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.surfaceContainerHighest),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'AgriSense',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.energy_savings_leaf,
                          size: 40,
                        )
                      ],
                    ),
                    Text(
                      'Next gen AI integrated financial advisor to save your money',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Swipe to access your financial assistant →',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Read about different ways to save up on taxes and have a strong retirement plan below ↓ ',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
        ),
      )),
    );
  }
}
