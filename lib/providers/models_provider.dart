import 'package:chatgpt_simulator_app/models/models_model.dart';
import 'package:chatgpt_simulator_app/services/api_service.dart';
import 'package:flutter/material.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "gpt-4o-mini";
  //String currentModel = "text-davinci-003";
  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel; 
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async{
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
