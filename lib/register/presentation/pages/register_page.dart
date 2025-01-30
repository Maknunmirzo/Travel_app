import 'package:flutter/material.dart';
import 'package:travel_app/register/presentation/pages/register_view_model.dart';
import 'package:travel_app/register/presentation/widgets/register_app_bar.dart';
import 'package:travel_app/register/presentation/widgets/register_button.dart';
import 'package:travel_app/register/presentation/widgets/register_text_field.dart';

import '../widgets/profile_image.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegisterAppBar(title: "Ma'lumotni kiriting",route: "/notice",),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
      
            spacing: 10,
            children: [
              ProfileImage(viewModel: RegisterViewModel(),),
              RegisterTextField(hintText: "ismingz",),
              RegisterTextField(hintText: "Familyangiz",),
              RegisterTextField(hintText: "+998 99 919-31-11",),
              RegisterTextField(hintText: "Viloyatingiz",),
              // Spacer(),
              RegisterButton(title: "Saqlash",route: "/homepage",),
              SizedBox(height: 60,)
                    
            ],
          ),
        )
    );
  }
}
