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
        print(state.result ?? "nodata");
        return Card(
          color: HexColor("#5ecc9f"),
          child: SizedBox(
            width: 400,
            height: 400,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  state.result ?? "nodata",
                  style: GoogleFonts.chauPhilomeneOne(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "what is naked in the winter and dresed at summer and keeps on repeting this pattern?",
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
                      "a tree",
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
