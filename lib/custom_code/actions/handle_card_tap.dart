// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future handleCardTap(
  BuildContext context,
  int index,
) async {
  final state = FFAppState();

  if (state.memLock) return;
  if (state.memMatched.contains(index)) return;
  if (state.memFlipped.contains(index)) return;

  // Voltear esta carta
  state.update(() {
    state.memFlipped = [...state.memFlipped, index];
  });

  if (state.memFlipped.length < 2) return;

  // Hay dos: bloquear y contar
  state.update(() {
    state.memLock = true;
    state.memMoves = state.memMoves + 1;
  });

  final a = state.memFlipped[0];
  final b = state.memFlipped[1];

  await Future.delayed(const Duration(milliseconds: 700));

  // Resolver
  state.update(() {
    if (state.memCards[a] == state.memCards[b]) {
      state.memMatched = [...state.memMatched, a, b];
    }
    state.memFlipped = [];
    state.memLock = false;
  });

  // Victoria: las 12 cartas emparejadas
  if (state.memMatched.length == state.memCards.length) {
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
                const Text('🧠', style: TextStyle(fontSize: 68)),
                const SizedBox(height: 14),
                const Text(
                  '¡Muy bien!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Has encontrado las 6 parejas en ${state.memMoves} intentos.\nPulsa Continuar para jugar otra vez.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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

    // Rebarajar
    state.update(() {
      state.memCards = buildMemoryDeck(pickMemoryAnimals()) ?? [];
      state.memFlipped = [];
      state.memMatched = [];
      state.memLock = false;
      state.memMoves = 0;
    });
  }
}
