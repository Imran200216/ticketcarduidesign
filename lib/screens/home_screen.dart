import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticketcarduidesign/components/custom_btn.dart';
import 'package:ticketcarduidesign/screens/ticket_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      resizeToAvoidBottomInset: false,
      bottomSheet: Container(
        color: const Color(0xFF191919),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: CustomBtn(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TicketScreen();
              }));
            },
            btnWidget: Text(
              "Buy Tickets",
              style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 340,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.zero,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1521417531039-75e91486cc40?q=80&w=2029&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Music Concert",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFB3B2B3),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Jisoo Blackpink Live Concert",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rs.500",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Bills included",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFB3B2B3),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.9,
              height: 1,
              color: Color(0xFF313131),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Japan Night Festival 2024",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "A concert is a live musical performance where artists showcase their talents before an audience, creating an electrifying and immersive experience. Whether held in intimate venues or massive stadiums, concerts bring people together to enjoy the magic of music, often accompanied by vibrant lights, visual effects, and energetic crowd participation. They serve as a platform for musicians to connect with their fans, express emotions, and share stories through melodies and lyrics. The atmosphere of a concert is often charged with excitement, as attendees sing along, dance, and create unforgettable memories, making it a celebration of art and human connection.",
                    style: GoogleFonts.manrope(
                      color: const Color(0xFFB3B2B3),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
