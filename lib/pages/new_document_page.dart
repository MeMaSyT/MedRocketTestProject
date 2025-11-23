import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/app_images.dart';
import '../resources/app_strings.dart';
import '../widgets/action_button.dart';
import '../widgets/extra_info_box.dart';
import '../widgets/info_widget.dart';
import '../widgets/info_with_description_widget.dart';
//Task1
class NewDocumentPage extends StatelessWidget {
  const NewDocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          "Новый документ",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.basicTextColor,
          ),
        ),
        shape: Border(bottom: BorderSide(color: Color(0xFFced6e3), width: 2)),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 30),
                  Image.asset(AppImages.newDocumentPhotoImage, fit: BoxFit.fitWidth),
                  SizedBox(height: 30),
                  InfoWidget(
                    text: "Ирина",
                    icon: Icons.account_circle_outlined,
                  ),
                  SizedBox(height: 20),
                  InfoWithDescriptionWidget(
                    text: "22 мая (вт), 16:00",
                    description: "Дата получения документа",
                    icon: Icons.calendar_today_outlined,
                  ),
                  SizedBox(height: 20),
                  InfoWithDescriptionWidget(
                    text: "Клиника \"Фомина\"",
                    description: "Бульвар Перервинский, д.4",
                    icon: Icons.house_outlined,
                  ),
                  SizedBox(height: 20),
                  InfoWidget(
                    text: "Стоматолог",
                    icon: Icons.medical_information_outlined,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ExtraInfoBox(text: AppStrings.newDocumentHint),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ActionButton(
                      text: "Добавить в медкарту",
                      color: AppColors.button1Color,
                      textColor: AppColors.basicWhiteTextColor,
                    ),
                    SizedBox(height: 10,),
                    ActionButton(
                      text: "Удалить",
                      color: AppColors.button2Color,
                      textColor: AppColors.basicTextColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.background,
    );
  }
}








