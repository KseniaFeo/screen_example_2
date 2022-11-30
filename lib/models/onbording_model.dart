import 'package:flutter/material.dart';

class OnboardingModel {
  final int idScreen;
  final String title;
  final String image;
  final String subtitleOne;
  final String subtitleTwo;
  final String subtitleTree;
  final String subtitleFour;

  OnboardingModel(
      {required this.idScreen,
      required this.title,
      required this.image,
      required this.subtitleOne,
      required this.subtitleTwo,
      required this.subtitleTree,
      required this.subtitleFour});}

  List<OnboardingModel> onboardings = [
    OnboardingModel(
        idScreen: 1,
        title: 'WELCOME TO Monumental habits'.toUpperCase(),
        image: 'assets/images/pasted-image-01.png',
        subtitleOne: 'We can'.toUpperCase(),
        subtitleTwo: ' help you'.toUpperCase(),
        subtitleTree: ' to be a better version of'.toUpperCase(),
        subtitleFour: ' yourself.'.toUpperCase()),
    OnboardingModel(
        idScreen: 2,
        title: 'CREATE NEW HABIT EASILY'.toUpperCase(),
        image: 'assets/images/habits.png',
        subtitleOne: 'We can'.toUpperCase(),
        subtitleTwo: ' help you'.toUpperCase(),
        subtitleTree: ' to be a better version of'.toUpperCase(),
        subtitleFour: ' yourself.'.toUpperCase()),
    OnboardingModel(
        idScreen: 3,
        title: 'KEEP TRACK OF YOUR PROGRESS'.toUpperCase(),
        image: 'assets/images/progress.png',
        subtitleOne: 'We can'.toUpperCase(),
        subtitleTwo: ' help you'.toUpperCase(),
        subtitleTree: ' to be a better version of'.toUpperCase(),
        subtitleFour: ' yourself.'.toUpperCase()),
    OnboardingModel(
        idScreen: 4,
        title: 'JOIN A SUPPORTIVE COMMUNITY'.toUpperCase(),
        image: 'assets/images/community-support.png',
        subtitleOne: 'We can'.toUpperCase(),
        subtitleTwo: ' help you'.toUpperCase(),
        subtitleTree: ' to be a better version of'.toUpperCase(),
        subtitleFour: ' yourself.'.toUpperCase()),
  ];