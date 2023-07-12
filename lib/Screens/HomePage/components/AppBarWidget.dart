import 'package:commerce_app/main.dart';
import 'package:commerce_app/models/language.dart';
import 'package:commerce_app/models/language_constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: const Icon(Icons.menu),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: DropdownButton<Language>(
                underline: const SizedBox(),
                icon: const Icon(Icons.language, color: Colors.black),
                onChanged: (Language? language) async {
                  if (language != null) {
                    Locale locale = await setLocale(language.languageCode);

                    // ignore: use_build_context_synchronously
                    MyApp.setLocale(context, locale);
                  }
                },
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>((e) => DropdownMenuItem(
                          value: e,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                e.flag,
                                style: const TextStyle(fontSize: 30),
                              ),
                              Text(e.name)
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
