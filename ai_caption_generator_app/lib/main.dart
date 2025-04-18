import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clipboard_manager/flutter_clipboard_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

const openAiApiKey = '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';

const bannerAdUnitId = 'ca-app-pub-9936832616338892/8422402572';
const rewardedAdUnitId = 'ca-app-pub-9936832616338892/6308618398';
const appOpenAdUnitId = 'ca-app-pub-9936832616338892/7820176461';

int coins = 10;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Caption Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

// rest of the code (shortened for space)