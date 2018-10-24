Cell[][] board = new Cell[8][8];
int w = 80;//size of each cell on the board;
int colour;
int turn = 1;
PImage pawn1,rook1,knight1,bishop1,queen1,king1,pawn2,rook2,knight2,bishop2,queen2,king2;
void setup()
{
  size(1366, 768, P2D);
  //Loading all the images
  pawn1 = loadImage("pawn1.png");
  pawn1.resize(w,w);
  pawn2 = loadImage("pawn2.png");
  pawn2.resize(w,w);
  rook1 = loadImage("rook1.png");
  rook1.resize(w,w);
  rook2 = loadImage("rook2.png");
  rook2.resize(w,w);
  bishop1 = loadImage("bishop1.png");
  bishop1.resize(w,w);
  bishop2 = loadImage("bishop2.png");
  bishop2.resize(w,w);
  knight1 = loadImage("knight1.png");
  knight1.resize(w,w);
  knight2 = loadImage("knight2.png");
  knight2.resize(w,w);
  queen1 = loadImage("queen1.png");
  queen1.resize(w,w);
  queen2 = loadImage("queen2.png");
  queen2.resize(w,w);
  king1 = loadImage("king1.png");
  king1.resize(w,w);
  king2 = loadImage("king2.png");
  king2.resize(w,w);
  
  for (int i=0; i<8; i++)
  {
    for (int j=0; j<8; j++)
    {
      colour = ((i+j)%2==0)?color(121, 161, 109):color(196, 196, 100);//swaps the colour of the cell;
      Piece t = new Piece();
      board[i][j] = new Cell(i*w, j*w, false, colour, t);
    }
  }
  resetboard();
}

void draw()
{
  background(127);
  for (int i=0; i<8; i++)
  {
    for (int j=0; j<8; j++)
    {
      board[i][j].show();
      board[i][j].mouseHover();
    }
  }
}

void resetboard()
{
  //Pawns
  for(int i = 0; i < 8; i++){
    board[i][1].piece.pawn = true;
    board[i][1].piece.team = 2;
    board[i][6].piece.pawn = true;
    board[i][6].piece.team = 1;
    board[i][1].isOccupied = true;
    board[i][6].isOccupied = true;
  }
  //Rooks
  board[0][0].piece.rook = true;
  board[0][0].piece.team = 2;
  board[0][7].piece.rook = true;
  board[0][7].piece.team = 1;
  board[7][0].piece.rook = true;
  board[7][0].piece.team = 2;
  board[7][7].piece.rook = true;
  board[7][7].piece.team = 1;
  board[0][0].isOccupied = true;
  board[0][7].isOccupied = true;
  board[7][0].isOccupied = true;
  board[7][7].isOccupied = true;
  //Knights
  board[1][0].piece.knight = true;
  board[1][0].piece.team = 2;
  board[6][0].piece.knight = true;
  board[6][0].piece.team = 2;
  board[1][7].piece.knight = true;
  board[1][7].piece.team = 1;
  board[6][7].piece.knight = true;
  board[6][7].piece.team = 1;
  board[1][0].isOccupied = true;
  board[6][0].isOccupied = true;
  board[1][7].isOccupied = true;
  board[6][7].isOccupied = true;
  //Bishops
  board[2][0].piece.bishop = true;
  board[2][0].piece.team = 2;
  board[5][0].piece.bishop = true;
  board[5][0].piece.team = 2;
  board[2][7].piece.bishop = true;
  board[2][7].piece.team = 1;
  board[5][7].piece.bishop = true;
  board[5][7].piece.team = 1;
  board[2][0].isOccupied = true;
  board[5][0].isOccupied = true;
  board[2][7].isOccupied = true;
  board[5][7].isOccupied = true;
  //Kings
  board[3][0].piece.king = true;
  board[3][0].piece.team = 2;
  board[3][7].piece.king = true;
  board[3][7].piece.team = 1;
  board[3][0].isOccupied = true;
  board[3][7].isOccupied = true; 
  //Queens
  board[4][0].piece.queen = true;
  board[4][0].piece.team = 2;
  board[4][7].piece.queen = true;
  board[4][7].piece.team = 1;
  board[4][0].isOccupied = true;
  board[4][7].isOccupied = true; 
}