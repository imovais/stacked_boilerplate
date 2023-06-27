import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_manually_prac/Views/LoginPage/loginpage_viewmodel.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginPageViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('LoginPage'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(viewModel.getCountValue().toString()),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Register'))
            ],
          )),
        );
      },
    );
  }
}
