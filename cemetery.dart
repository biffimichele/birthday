//HOMESCREEN() BUTTON
/* ElevatedButton(
  style: ElevatedButton.styleFrom(
   elevation: 4,
 side: BorderSide(
 color: AppColors.violet,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                backgroundColor: AppColors.eggplant,
                foregroundColor: AppColors.lavender,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BirthdayScreen(),
                  ),
                );
              },
              child: Text(
                'START!',
                style: GoogleFonts.chewy(
                  textStyle: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.lavender,
                  ),
                ),
              ),
            ), */


// Start Button nella home screen Statico, senza Press animation 
         /* GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BirthdayScreen(),
                  ),
                );
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/button.png',
                    width: 256,
                    height: 128,
                    scale: 1,
                    filterQuality: FilterQuality.none,
                    isAntiAlias: false,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    'Start',
                    style: GoogleFonts.pixelifySans(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ), */


// Codice per aggiungere l'immagine della torta se necessario (usato in birthday_screen.dart)
// CAKE IMAGE
/*SizedBox(),
  SizedBox(
  // x3 320x320 - x4 400x400
  width: 320,
  height: 400,
  child: Image.asset(
  'assets/cake.png',
  filterQuality: FilterQuality.none,
  isAntiAlias: false,
  scale: 1,
  fit: BoxFit.fill,
  ),
), */





// BIRTHDAY SCREEN ORIGINAL

/* import 'package:flutter/material.dart';
import 'package:travel/components/touch_zones.dart';
import 'package:travel/screens/gift_screen.dart';
import 'package:travel/screens/home_screen.dart';
import 'package:travel/widgets/gradient_background.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      // x3 320x320 - x4 400x400
                      width: 400,
                      height: 400,
                      child: Image.asset(
                        'assets/hbAlice_alt.png',
                        filterQuality: FilterQuality.none,
                        isAntiAlias: false,
                        scale: 1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TouchZones(
              nextScreen: GiftScreen(),
              backScreen: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
      child: SizedBox(
        width: 205,
        height: 250,
        child: Image.asset(
          'assets/gift-box.png',
          filterQuality: FilterQuality.none,
          isAntiAlias: false,
          scale: 1,
          fit: BoxFit.fill,
        ),
      ),
*/


/* opened_gift_screen.dart old datepicker button
                               ElevatedButton.icon(
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20),
                                  ),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                ),
                                onPressed: _pickDate,
                                icon: const Icon(Icons.calendar_today),
                                label: Text(
                                  selectedDate == null
                                      ? 'Scegli data'
                                      : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                                ),
                              ), */