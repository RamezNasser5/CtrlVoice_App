import 'dart:io';

import 'package:ctrlvoice/core/utils/consts.dart';
import 'package:ctrlvoice/features/home_feature/data/repo/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<String> getResponseData(String prompt) async {
    final apiKey = dotenv.env['API_KEY'];
    if (apiKey == null) {
      debugPrint('No \$API_KEY environment variable');
      exit(1);
    }
    final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
    final content = [Content.text(based + prompt)];
    debugPrint(content.toString());
    final response = await model.generateContent(content);
    debugPrint(response.text);
    return response.text!;
  }
}
