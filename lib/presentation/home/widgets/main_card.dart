import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riddles/application/riddles/riddles_bloc.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RiddlesBloc, RiddlesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.purple,
            ),
          );
        }
        print(state.result?.first.title ?? "nodata");
        return Card(
          color: HexColor("#5ecc9f"),
          child: SizedBox(
            width: 400,
            height: 400,
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  state.result?.first.title ?? "nodata",
                  style: GoogleFonts.chauPhilomeneOne(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  state.result?.first.question ?? "nodata",
                  style: GoogleFonts.chauPhilomeneOne(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                  color: HexColor("#36a276"),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                      width: 20,
                    ),
                    Text(
                      state.result?.first.answer ?? "nodata",
                      style: GoogleFonts.chauPhilomeneOne(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
