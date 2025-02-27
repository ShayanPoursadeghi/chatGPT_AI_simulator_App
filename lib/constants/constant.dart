import 'package:chatgpt_simulator_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

List<String> models = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
];

List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>>? modelsItems =
      List<DropdownMenuItem<String>>.generate(
          models.length,
          (index) => DropdownMenuItem(
              value: models[index],
              child: TextWidget(
                label: models[index],
                fontSize: 15,
              )));
  return modelsItems;
}

final chatMessages = [
  {
    "msg":"Hello Shayan",
    "chatIndex": 0,
  },
  {
    "msg":"Hi there",
    "chatIndex": 1,
  },
    {
    "msg":"How are you?",
    "chatIndex": 0,
  },
    {
    "msg":"Thanks, How about you?",
    "chatIndex": 1,
  },    {
    "msg":"Thank you",
    "chatIndex": 0,
  },
    {
    "msg":"How can I help you?",
    "chatIndex": 1,
  },
];