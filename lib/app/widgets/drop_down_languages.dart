import 'package:daofa_go/app/data/constants/font_size.dart';
import 'package:daofa_go/app/data/constants/size_screen_constants.dart';
import 'package:daofa_go/app/data/constants/svg_constants.dart';
import 'package:daofa_go/app/data/constants/text_style_auto_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DropDownLanguage extends StatelessWidget {
  const DropDownLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    void updateLanguage(Locale locale) {
      if (locale == const Locale('lo', 'LA')) {
        box.write('lang', 'lo_LA');
      } else {
        box.write('lang', 'en_US');
      }
      Get.updateLocale(locale);
    }

    const double sizeScreen = SizeScreenConstants.sizeScreen;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 17),
        margin: const EdgeInsets.symmetric(vertical: 9),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            elevation: 1,
            value: box.read("lang").toString() == 'en_US' && box.read("lang") != "" && box.read("lang") != null ? "en" : "la",
            items: [
              DropdownMenuItem(
                value: "la",
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                  child: Row(
                    children: [
                      // const Icon(Icons.language, color: dfPrimaryColor),
                      SvgPicture.asset(SvgConstants.logoChangedLanguages),
                      const SizedBox(width: 7),
                      Text(
                        "ລາວ",
                        style: TextStyle(
                          fontSize: Get.width <= sizeScreen ? 12 : 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DropdownMenuItem(
                value: "en",
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                  child: Row(
                    children: [
                      // const Icon(Icons.language, color: dfPrimaryColor),
                      SvgPicture.asset(SvgConstants.logoChangedLanguages),
                      const SizedBox(width: 7),
                      Text(
                        "English",
                        // style: TextStyle(
                        //   fontSize: Get.width <= sizeScreen ? 12 : 16,
                        // ),
                        style: OptionStyleAutoSize(context, fontSizeFactor: ValueAutoSize.default_sub_des_size),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            onChanged: (value) {
              if (value == "en") {
                updateLanguage(const Locale('en', 'US'));
              } else if (value == "la") {
                updateLanguage(const Locale('lo', 'LA'));
              }
            },
          ),
        ),
      ),
    );
  }
}
