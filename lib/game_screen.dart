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

    setState(() {
      _board[row][col] = _currentPlayer;
      //check for winner
      if(_board[row] [0] == _currentPlayer &&
          _board[row][1] == _currentPlayer &&
          _board[row][2] == _currentPlayer){
        _winner = _currentPlayer;
        _gameOver = true;
      } else if(_board[0] [0] == _currentPlayer &&
          _board[row][col] == _currentPlayer &&
          _board[row][col] == _currentPlayer) {
        _winner = _currentPlayer;
        _gameOver = true;
      } else if(_board[0] [0] == _currentPlayer &&
          _board[1][1] == _currentPlayer &&
          _board[2][2] == _currentPlayer) {
        _winner = _currentPlayer;
        _gameOver = true;
      } else if(_board[0] [2] == _currentPlayer &&
          _board[1][1] == _currentPlayer &&
          _board[2][0] == _currentPlayer) {
        _winner = _currentPlayer;
        _gameOver = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
        return Scaffold();
  }
}