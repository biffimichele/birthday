import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/colors.dart';
import 'package:travel/screens/birthday_screen.dart';
import 'package:travel/widgets/gradient_background.dart';
import 'package:travel/widgets/mobile_frame.dart';

class OpenedGiftScreen extends StatefulWidget {
  const OpenedGiftScreen({super.key});

  @override
  State<OpenedGiftScreen> createState() => _OpenedGiftScreenState();
}

class _OpenedGiftScreenState extends State<OpenedGiftScreen> {
  DateTime? selectedDate;
  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  bool _pressed = false;
  void _handleTap() async {
    setState(() => _pressed = true);

    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MobileFrame(
            child: BirthdayScreen(),
          ),
        ),
      );
    }

    setState(() => _pressed = false);
  }

// commento di prova
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 100,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                          child: Image.asset(
                            'assets/3_cime.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Il Super Weekend",
                                style: GoogleFonts.pixelifySans(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Dolomitico!",
                                style: GoogleFonts.pixelifySans(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Vivi un incredibile weekend nelle dolomiti e affronta il mitico trekking delle Tre Cime di Lavaredo insieme a Michelino!",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 40),
                              Text(
                                "Seleziona la data della partenza:",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: _pickDate,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      width: 204.8,
                                      height: 76.8,
                                      child: Image.asset(
                                        'assets/datePicker.png',
                                        scale: 1,
                                        filterQuality: FilterQuality.none,
                                        isAntiAlias: false,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    ElevatedButton.icon(
                                      style: ButtonStyle(
                                        padding: WidgetStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 45, vertical: 25),
                                        ),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.transparent),
                                        elevation: WidgetStateProperty.all(0),
                                        shadowColor: WidgetStateProperty.all(
                                            Colors.transparent),
                                        overlayColor: WidgetStateProperty.all(
                                            Colors.transparent),
                                      ),
                                      onPressed: _pickDate,
                                      icon: const Icon(
                                        Icons.calendar_today,
                                        color: AppColors.eggplant,
                                      ),
                                      label: Text(
                                        selectedDate == null
                                            ? 'Scegli data'
                                            : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: AppColors.eggplant,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        selectedDate != null
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 30,
                                ),
                                child: GestureDetector(
                                  onTap: _handleTap,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        width: 256,
                                        height: 76.8,
                                        child: Image.asset(
                                          _pressed
                                              ? 'assets/pressed_button.png'
                                              : 'assets/button.png',
                                          scale: 1,
                                          filterQuality: FilterQuality.none,
                                          isAntiAlias: false,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: _pressed
                                            ? const Offset(0, 12)
                                            : Offset.zero,
                                        child: Text(
                                          'Salva',
                                          style: GoogleFonts.pixelifySans(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
