import 'package:rockpaperscissors/emojis.dart';
import 'package:rockpaperscissors/emoji.dart';
import 'dart:io';
import 'dart:math';


String getPlayerMove() {
  print("What's your pick?");
  String selection = stdin.readLineSync().toLowerCase();

  switch (selection) {
    case "bato":
      return "${Emojis.rock}";
      break;
    case "papel":
      return "${Emojis.rollOfPaper}";
      break;
    case "gunting":
      return "${Emojis.scissors}";
      break;
    default:
      return "Quit";
      break;
  }
}

String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);

  switch (move) {
    case 0:
      return "${Emojis.rock}";
      break;
    case 1:
      return "${Emojis.rollOfPaper}";
      break;
    case 2:
      return "${Emojis.scissors}";
      break;
    default:
      break;
  }
}

String whoWon(String playerMove, String computerMove) {
  var yourScore = 0;
  var compScore = 0;

  if (playerMove == computerMove) {
    print(yourScore + 0.5);
    print(compScore + 0.5);
    return "Tie!";
  } else if (playerMove == "${Emojis.rock}" && computerMove == "${Emojis.scissors}") {
    print(yourScore + 1);
    return "You Win!";
  } else if (playerMove == "${Emojis.scissors}" && computerMove == "${Emojis.rollOfPaper}") {
    print(yourScore + 1);
    return "You Win!";
  } else if (playerMove == "${Emojis.rollOfPaper}" && computerMove == "${Emojis.rock}") {
    print(yourScore + 1);
    return "You Win!";
  } else {
    print(compScore + 1);
    return "Computer Wins!";
  }
}

void main() {
  while (true) {
    print(" ");
    print("Papel, Gunting, Bato!");
    String playerMove = getPlayerMove();
    print("You played $playerMove");

    if (playerMove == "Quit") {
      return;
    }

    String computerMove = getComputerMove();
    print("Computer played $computerMove");
    print(whoWon(playerMove, computerMove));
  }
}
