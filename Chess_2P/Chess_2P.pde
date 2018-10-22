Cell[][] board = new Cell[8][8];
int w = 80;//size of each cell on the board;
int colour;

void setup()
{
  size(1366, 768, P2D);
  for (int i=0; i<8; i++)
  {
    for (int j=0; j<8; j++)
    {
      colour = ((i+j)%2==0)?color(121, 161, 109):color(196, 196, 100);//swaps the colour of the cell;
      board[i][j] = new Cell(i*w, j*w, false, colour);
    }
  }
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
