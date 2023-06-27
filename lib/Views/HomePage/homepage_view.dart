// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_manually_prac/Views/HomePage/homepage_viewmodel.dart';
import 'package:stacked_manually_prac/app/app.router.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomePageViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(viewModel.getCountValue().toString()),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.getCounterService();
                  },
                  child: Text('ADD')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navigateToLoginPage();
                  },
                  child: Text('Login'))
            ],
          ),
        ));
      },
    );
  }
}
