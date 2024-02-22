import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/home_posts_model.dart';
import '../services/api_links.dart';
import '../services/api_service.dart';

class HomeController extends GetxController {
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);
  HomePosts _posts = HomePosts(status: false, message: '', posts: []);
  bool _isOnPageTurning = false;
  int _currentPage = 0;
  bool _isloading = false;
  PageController get pageController => _pageController;
  HomePosts get posts => _posts;
  bool get isOnPageTurning => _isOnPageTurning;
  int get currentPage => _currentPage;
  bool get isloading => _isloading;

  void fetchHomePosts() async {
    try {
      _isloading = true;
      update();
      final apiResponse = await ApiService.apiPostRequest(
          ApiLinks.getHomePosts, jsonEncode({}));
      print(jsonDecode(apiResponse));
      _posts = homePostsFromJson(apiResponse);
      _isloading = false;
    } catch (e) {
      throw Exception(e);
    } finally {
      update();
    }
  }

  void scrollListener() {
    if (_isOnPageTurning &&
        _pageController.page == _pageController.page!.roundToDouble()) {
      _currentPage = _pageController.page!.toInt();
      _isOnPageTurning = false;
      update();
    } else if (!_isOnPageTurning &&
        _currentPage.toDouble() != _pageController.page) {
      if ((_currentPage.toDouble() - _pageController.page!).abs() > 0.7) {
        _isOnPageTurning = true;
        update();
      }
    }
  }

  @override
  void onInit() {
    fetchHomePosts();
    super.onInit();
  }
}
