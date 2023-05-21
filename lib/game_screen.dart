import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  String player1;
  String player2;
  GameScreen({required this.player1, required this.player2});
    @override
    State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  late List<List<String>> _board;
  late String _currentPlayer;
  late String _winner;
  late bool _gameOver;
  
  @override
  void initState(){
    super.initState();
    _board = List.generate(3, (_) => List.generate(3, (_)=>""));
    _currentPlayer = "X";
    _winner = "";
    _gameOver = false;
  }

  //Reset Game
  void _resetGame() {
    setState(() {
      _board = List.generate(3, (_) => List.generate(3, (_)=>""));
      _currentPlayer = "X";
      _winner = "";
      _gameOver = false;
    });
  }

  void _makeMove(int row, int col) {
    if (_board[row][col] != "" || _gameOver) {
      return;
    }

    setState() {
      if(_board[row] [0] == _currentPlayer && _board[row][1] ==)
    });
  }
  @override
  Widget build(BuildContext context) {
        return Scaffold();
  }
}