import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/onboarding1.jpg',
      'title': 'Welcome to Onboarding',
      'subtitle': 'Page 1 Subtitle',
    },
    {
      'image': 'assets/onboarding2.jpg',
      'title': 'Explore Features',
      'subtitle': 'Page 2 Subtitle',
    },
    {
      'image': 'assets/onboarding3.jpg',
      'title': 'Get Started',
      'subtitle': 'Page 3 Subtitle',
    },
    {
      'image': 'assets/onboarding4.jpg',
      'title': 'Ready to Dive In',
      'subtitle': 'Page 4 Subtitle',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                image: onboardingData[index]['image']!,
                title: onboardingData[index]['title']!,
                subtitle: onboardingData[index]['subtitle']!,
              );
            },
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Row(
              children: List.generate(
                onboardingData.length,
                (index) => _buildPageIndicator(index),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: () {
                if (_currentPage == onboardingData.length - 1) {
                  // Handle navigation or perform any action on the last page
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              child: Text(
                _currentPage == onboardingData.length - 1
                    ? 'Get Started'
                    : 'Next',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: _currentPage == index ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  OnboardingPage({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(bo)

        //   ),

        // ),
        Image.asset(
          image,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 24.0),

        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
