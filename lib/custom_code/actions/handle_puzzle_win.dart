// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handlePuzzleWin(BuildContext context) async {
  final state = FFAppState();

  if (state.piecesPlaced < 9) return;

  await Future.delayed(const Duration(milliseconds: 400));

  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (ctx) {
      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          width: 460,
          padding: const EdgeInsets.all(36),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFFF5963), Color(0xFF4B39EF)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.35),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('🎉', style: TextStyle(fontSize: 68)),
              const SizedBox(height: 14),
              const Text(
                '¡Enhorabuena!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Has completado el puzzle.\nPulsa Continuar para hacer otro.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                child: InkWell(
                  borderRadius: BorderRadius.circular(22),
                  onTap: () => Navigator.pop(ctx),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 52,
                      vertical: 16,
                    ),
                    child: const Text(
                      'Continuar',
                      style: TextStyle(
                        color: Color(0xFF4B39EF),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  state.update(() {
    state.selectedLevelId = pickRandomLevelId(state.selectedLevelId);
    state.piecesPlaced = 0;
    state.selectedPieceURL = '';
    state.boardSlots = List<String>.filled(10, '', growable: true);
    state.trayPieces =
        getLevelPieces(state.selectedLevelId).toList().cast<String>();
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
