import 'package:flutter/material.dart';
import 'package:screen_example_2/models/onbording_model.dart';

class OnboardingScreenWidget extends StatefulWidget {
  const OnboardingScreenWidget({Key? key}) : super(key: key);

  @override
  State<OnboardingScreenWidget> createState() => _OnboardingScreenWidgetState();
}

class _OnboardingScreenWidgetState extends State<OnboardingScreenWidget> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final _primeryTextStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: Color.fromARGB(255, 87, 51, 83),
  );

  final _secondTextStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 87, 51, 83),
  );

  final _thirdTextStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 249, 181, 102),
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: screenHeight,
              child: Column(
                children: [
                  Flexible(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardings.length,
                      itemBuilder: (BuildContext context, int index) {
                        OnboardingModel onboarding = onboardings[index];
                        return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 80.0),
                              SizedBox(
                                width: screenWidth - 100,
                                child: Text(
                                  onboarding.title,
                                  style: _primeryTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                  height: screenHeight / 2,
                                  child: Image(
                                      image: AssetImage(onboarding.image))),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: onboarding.subtitleOne,
                                        style: _secondTextStyle,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: onboarding.subtitleTwo,
                                            style: _thirdTextStyle,
                                          ),
                                          TextSpan(
                                            text: onboarding.subtitleTree,
                                            style: _secondTextStyle,
                                          ),
                                          TextSpan(
                                            text: onboarding.subtitleFour,
                                            style: _thirdTextStyle,
                                          ),
                                        ])),
                              ),
                              const SizedBox(height: 30.0),
                            ]);
                      },
                      onPageChanged: (value) {
                        _currentIndex = value;
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          child: Text(
                            'Skip',
                            style: _secondTextStyle,
                          ),
                          onTap: () {
                            _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.slowMiddle);
                          },
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int index = 0;
                                index < onboardings.length;
                                index++)
                              _RoundWidget(isSelected: index == _currentIndex),
                          ],
                        ),
                        GestureDetector(
                          child: Text('Next', style: _secondTextStyle),
                          onTap: () {
                            if (_currentIndex == 3) {
                              _pageController.animateToPage(3,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            }
                            {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            }
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class _RoundWidget extends StatelessWidget {
  final bool isSelected;
  const _RoundWidget({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 87, 51, 83);
    const secondaryColor = Color.fromARGB(255, 249, 181, 102);
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? secondaryColor : primaryColor,
          shape: BoxShape.circle,
        ),
        width: isSelected ? 15 : 13,
        height: isSelected ? 15 : 13,
      ),
    );
  }
}
