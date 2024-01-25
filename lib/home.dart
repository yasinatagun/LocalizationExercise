// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exercise_localization/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Pizza App",
            style: GoogleFonts.pacifico(
              color: textColor1,
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          backgroundColor: mainColor,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                d!.pizzaBaslik,
                style: TextStyle(
                    fontSize: 36,
                    color: mainColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Image.asset("assets/images/pizza.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChipButton(data: d.peynirYazi),
                  ChipButton(data: d.biberYazi),
                  ChipButton(data: d.sucukYazi),
                  ChipButton(data: d.zeytinYazi),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    d.teslimatSure,
                    style: TextStyle(
                        fontSize: 20,
                        color: textColor2,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      d.teslimatBaslik,
                      style: TextStyle(
                          fontSize: 22,
                          color: mainColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    d.pizzaAciklama,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    d.fiyat,
                    style: TextStyle(
                        fontSize: 36,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: mainColor,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      child: Text(
                        d.buttonYazi,
                        style: TextStyle(color: textColor1, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ChipButton extends StatelessWidget {
  const ChipButton({
    super.key,
    required this.data,
  });
  final String data;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: mainColor),
      child: Text(data, style: TextStyle(color: textColor1)),
    );
  }
}
