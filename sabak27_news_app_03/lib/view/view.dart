import 'package:flutter/material.dart';
import 'package:sabak27_news_app_03/service/fetch_service.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 
  @override
   void initState(){
    super.initState();
    TopNewsRepo().fetchTopNews();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: const Text('HomeView'),),
    );
  }
}