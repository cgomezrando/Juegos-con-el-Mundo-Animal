import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _appMode = '';
  String get appMode => _appMode;
  set appMode(String value) {
    _appMode = value;
  }

  bool _soundOn = false;
  bool get soundOn => _soundOn;
  set soundOn(bool value) {
    _soundOn = value;
  }

  String _selectedLevelId = '';
  String get selectedLevelId => _selectedLevelId;
  set selectedLevelId(String value) {
    _selectedLevelId = value;
  }

  int _puzzleRows = 2;
  int get puzzleRows => _puzzleRows;
  set puzzleRows(int value) {
    _puzzleRows = value;
  }

  int _puzzleCols = 2;
  int get puzzleCols => _puzzleCols;
  set puzzleCols(int value) {
    _puzzleCols = value;
  }

  List<String> _trayPieces = [];
  List<String> get trayPieces => _trayPieces;
  set trayPieces(List<String> value) {
    _trayPieces = value;
  }

  void addToTrayPieces(String value) {
    trayPieces.add(value);
  }

  void removeFromTrayPieces(String value) {
    trayPieces.remove(value);
  }

  void removeAtIndexFromTrayPieces(int index) {
    trayPieces.removeAt(index);
  }

  void updateTrayPiecesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    trayPieces[index] = updateFn(_trayPieces[index]);
  }

  void insertAtIndexInTrayPieces(int index, String value) {
    trayPieces.insert(index, value);
  }

  List<String> _boardSlots = ['', '', '', '', '', '', '', '', '', ''];
  List<String> get boardSlots => _boardSlots;
  set boardSlots(List<String> value) {
    _boardSlots = value;
  }

  void addToBoardSlots(String value) {
    boardSlots.add(value);
  }

  void removeFromBoardSlots(String value) {
    boardSlots.remove(value);
  }

  void removeAtIndexFromBoardSlots(int index) {
    boardSlots.removeAt(index);
  }

  void updateBoardSlotsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    boardSlots[index] = updateFn(_boardSlots[index]);
  }

  void insertAtIndexInBoardSlots(int index, String value) {
    boardSlots.insert(index, value);
  }

  String _selectedPieceURL = '';
  String get selectedPieceURL => _selectedPieceURL;
  set selectedPieceURL(String value) {
    _selectedPieceURL = value;
  }

  int _piecesPlaced = 0;
  int get piecesPlaced => _piecesPlaced;
  set piecesPlaced(int value) {
    _piecesPlaced = value;
  }

  List<String> _memCards = [];
  List<String> get memCards => _memCards;
  set memCards(List<String> value) {
    _memCards = value;
  }

  void addToMemCards(String value) {
    memCards.add(value);
  }

  void removeFromMemCards(String value) {
    memCards.remove(value);
  }

  void removeAtIndexFromMemCards(int index) {
    memCards.removeAt(index);
  }

  void updateMemCardsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    memCards[index] = updateFn(_memCards[index]);
  }

  void insertAtIndexInMemCards(int index, String value) {
    memCards.insert(index, value);
  }

  bool _memLock = false;
  bool get memLock => _memLock;
  set memLock(bool value) {
    _memLock = value;
  }

  int _memMoves = 0;
  int get memMoves => _memMoves;
  set memMoves(int value) {
    _memMoves = value;
  }

  String _diffLevelId = '';
  String get diffLevelId => _diffLevelId;
  set diffLevelId(String value) {
    _diffLevelId = value;
  }

  String _diffImage = '';
  String get diffImage => _diffImage;
  set diffImage(String value) {
    _diffImage = value;
  }

  List<int> _diffFound = [];
  List<int> get diffFound => _diffFound;
  set diffFound(List<int> value) {
    _diffFound = value;
  }

  void addToDiffFound(int value) {
    diffFound.add(value);
  }

  void removeFromDiffFound(int value) {
    diffFound.remove(value);
  }

  void removeAtIndexFromDiffFound(int index) {
    diffFound.removeAt(index);
  }

  void updateDiffFoundAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    diffFound[index] = updateFn(_diffFound[index]);
  }

  void insertAtIndexInDiffFound(int index, int value) {
    diffFound.insert(index, value);
  }

  int _diffMoves = 0;
  int get diffMoves => _diffMoves;
  set diffMoves(int value) {
    _diffMoves = value;
  }

  List<int> _memFlipped = [];
  List<int> get memFlipped => _memFlipped;
  set memFlipped(List<int> value) {
    _memFlipped = value;
  }

  void addToMemFlipped(int value) {
    memFlipped.add(value);
  }

  void removeFromMemFlipped(int value) {
    memFlipped.remove(value);
  }

  void removeAtIndexFromMemFlipped(int index) {
    memFlipped.removeAt(index);
  }

  void updateMemFlippedAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    memFlipped[index] = updateFn(_memFlipped[index]);
  }

  void insertAtIndexInMemFlipped(int index, int value) {
    memFlipped.insert(index, value);
  }

  List<int> _memMatched = [];
  List<int> get memMatched => _memMatched;
  set memMatched(List<int> value) {
    _memMatched = value;
  }

  void addToMemMatched(int value) {
    memMatched.add(value);
  }

  void removeFromMemMatched(int value) {
    memMatched.remove(value);
  }

  void removeAtIndexFromMemMatched(int index) {
    memMatched.removeAt(index);
  }

  void updateMemMatchedAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    memMatched[index] = updateFn(_memMatched[index]);
  }

  void insertAtIndexInMemMatched(int index, int value) {
    memMatched.insert(index, value);
  }

  String _chainLevelId = '';
  String get chainLevelId => _chainLevelId;
  set chainLevelId(String value) {
    _chainLevelId = value;
  }

  List<String> _chainGrid = [];
  List<String> get chainGrid => _chainGrid;
  set chainGrid(List<String> value) {
    _chainGrid = value;
  }

  void addToChainGrid(String value) {
    chainGrid.add(value);
  }

  void removeFromChainGrid(String value) {
    chainGrid.remove(value);
  }

  void removeAtIndexFromChainGrid(int index) {
    chainGrid.removeAt(index);
  }

  void updateChainGridAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chainGrid[index] = updateFn(_chainGrid[index]);
  }

  void insertAtIndexInChainGrid(int index, String value) {
    chainGrid.insert(index, value);
  }

  List<int> _chainPath = [];
  List<int> get chainPath => _chainPath;
  set chainPath(List<int> value) {
    _chainPath = value;
  }

  void addToChainPath(int value) {
    chainPath.add(value);
  }

  void removeFromChainPath(int value) {
    chainPath.remove(value);
  }

  void removeAtIndexFromChainPath(int index) {
    chainPath.removeAt(index);
  }

  void updateChainPathAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chainPath[index] = updateFn(_chainPath[index]);
  }

  void insertAtIndexInChainPath(int index, int value) {
    chainPath.insert(index, value);
  }

  List<int> _chainFound = [];
  List<int> get chainFound => _chainFound;
  set chainFound(List<int> value) {
    _chainFound = value;
  }

  void addToChainFound(int value) {
    chainFound.add(value);
  }

  void removeFromChainFound(int value) {
    chainFound.remove(value);
  }

  void removeAtIndexFromChainFound(int index) {
    chainFound.removeAt(index);
  }

  void updateChainFoundAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chainFound[index] = updateFn(_chainFound[index]);
  }

  void insertAtIndexInChainFound(int index, int value) {
    chainFound.insert(index, value);
  }

  int _chainMoves = 0;
  int get chainMoves => _chainMoves;
  set chainMoves(int value) {
    _chainMoves = value;
  }

  int _pandaTarget = 0;
  int get pandaTarget => _pandaTarget;
  set pandaTarget(int value) {
    _pandaTarget = value;
  }

  int _pandaVisible = -1;
  int get pandaVisible => _pandaVisible;
  set pandaVisible(int value) {
    _pandaVisible = value;
  }

  bool _pandaRunning = false;
  bool get pandaRunning => _pandaRunning;
  set pandaRunning(bool value) {
    _pandaRunning = value;
  }

  bool _pandaFound = false;
  bool get pandaFound => _pandaFound;
  set pandaFound(bool value) {
    _pandaFound = value;
  }

  int _pandaMoves = 0;
  int get pandaMoves => _pandaMoves;
  set pandaMoves(int value) {
    _pandaMoves = value;
  }

  List<int> _pandaSpots = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  List<int> get pandaSpots => _pandaSpots;
  set pandaSpots(List<int> value) {
    _pandaSpots = value;
  }

  void addToPandaSpots(int value) {
    pandaSpots.add(value);
  }

  void removeFromPandaSpots(int value) {
    pandaSpots.remove(value);
  }

  void removeAtIndexFromPandaSpots(int index) {
    pandaSpots.removeAt(index);
  }

  void updatePandaSpotsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    pandaSpots[index] = updateFn(_pandaSpots[index]);
  }

  void insertAtIndexInPandaSpots(int index, int value) {
    pandaSpots.insert(index, value);
  }
}
