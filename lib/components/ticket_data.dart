import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketData extends StatelessWidget {
  const TicketData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.start,
          "Jisoo Blackpink Live Concert",
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Date",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "14 February 2025",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF9A9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),

            ///title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Time",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "12.30 PM",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF9A9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Check In Type",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "VIP A",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF9A9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),

            ///title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  "Order ID",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "EHNHGFTUOP",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF9A9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const DottedLine(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          lineLength: double.infinity,
          lineThickness: 2.4,
          dashLength: 4.0,
          dashColor: Color(0xFFE3E3E2),
          dashGapLength: 4.0,
          dashGapColor: Colors.transparent,
        ),
        const SizedBox(
          height: 30,
        ),

        /// place
        Text(
          textAlign: TextAlign.start,
          "Place",
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 4,
        ),

        /// address
        Text(
          textAlign: TextAlign.start,
          "No, 25, 1 st cross, Anna nagar, chennai -605013",
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w800,
            color: const Color(0xFF9A9A9A),
            fontSize: 14,
          ),
        ),

        const SizedBox(
          height: 40,
        ),

        /// barcode
        // Barcode
        Center(
          child: BarcodeWidget(
            barcode: Barcode.code128(),
            // Use code128 for a typical barcode
            data: "EHNHGFTUOP",
            // Your Order ID or relevant data
            width: 400,
            height: 80,
            drawText: true,
            // Display text below the barcode
            style: GoogleFonts.manrope(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
