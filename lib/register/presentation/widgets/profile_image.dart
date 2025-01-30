import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/register/presentation/pages/register_view_model.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.viewModel});

  final RegisterViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) => Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(viewModel.defaultProfileImage),
              child: viewModel.image != null
                  ? ProfileImageItem(image: viewModel.image!)
                  : Image.asset(
                      "assets/images/default_profile.png",
                      fit: BoxFit.cover,
                    ),
            ),
            IconButton(
              onPressed: (
                  ) {
                viewModel.pickImage();
              },
              icon: SvgPicture.asset(
                "assets/svg/edit.svg",
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                width: 29,
                height: 29,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileImageItem extends StatelessWidget {
  const ProfileImageItem({
    super.key,
    required this.image,
  });

  final File image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 140,
        width: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.file(image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
