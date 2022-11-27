import 'package:flutter/material.dart';

class IntroductionFirstScreenWidget extends StatelessWidget {
  const IntroductionFirstScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 50,
              ),
              FirstScreenWidget(),
              SizedBox(
                height: 65,
              ),
              ButtonWidget()
            ],
          ),
        ]),
      ),
    );
  }
}

class FirstScreenWidget extends StatelessWidget {
  const FirstScreenWidget({Key? key}) : super(key: key);
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

  final String _subtitleFirst = "WE CAN";
  final String _subtitleSecond = " HELP YOU ";
  final String _subtitleThird = "TO BE A BETTER VERSION OF";
  final String _subtitleFourth = " YOURSELF.";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: screenWidth - 100,
        alignment: Alignment.center,
        child: Text(
          'Welcome to Monumental habits'.toUpperCase(),
          style: _primeryTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      Image.asset(
        'assets/images/pasted-image-01.png',
        height: screenHeight / 2,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: _subtitleFirst,
                style: _secondTextStyle,
                children: <TextSpan>[
                  TextSpan(
                    text: _subtitleSecond,
                    style: _thirdTextStyle,
                  ),
                  TextSpan(
                    text: _subtitleThird,
                    style: _secondTextStyle,
                  ),
                  TextSpan(
                    text: _subtitleFourth,
                    style: _thirdTextStyle,
                  ),
                ])),
      ),
    ]);
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);
  final _secondTextStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(87, 51, 83, 1),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          child: Text(
            'Skip',
            style: _secondTextStyle,
          ),
          onTap: () {},
        ),
        Row(children: [
          roundWidget(isSelected: true),
          const SizedBox(
            width: 9,
          ),
          roundWidget(isSelected: true),
          const SizedBox(
            width: 9,
          ),
          roundWidget(isSelected: true),
          const SizedBox(
            width: 9,
          ),
          roundWidget(isSelected: true),
        ]),
        GestureDetector(
          child: Text('Next', style: _secondTextStyle),
          onTap: () {},
        )
      ],
    );
  }
}

Widget roundWidget({bool isSelected = false}) {
  const primaryColor =  Color.fromARGB(255, 87, 51, 83);
  const secondaryColor =  Color.fromARGB(255, 249, 181, 102);

    final double size = isSelected ? 13 : 11;
    final color = isSelected ? primaryColor : secondaryColor;
    final border = isSelected
        ? Border.all(
            color: primaryColor.withOpacity(0.2),
            width: 2,
            // strokeAlign: StrokeAlign.outside
            )
        : null;
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border,
      ),
      width: size,
      height: size,
    );
  }