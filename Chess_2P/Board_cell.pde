class Cell
{
  float x, y; // location of the cell
  boolean isOccupied; // boolean variable to check if the cell is occupied or not
  int cellColor; // colour of the cell
  Piece piece;
  Cell(float x_, float y_, boolean isOccupied_, int cellColor_, Piece piece_)
  {
    this.x = x_;
    this.y = y_;
    this.isOccupied = isOccupied_;
    this.cellColor = cellColor_;
    this.piece = piece_;
  }
  
  void show()
  {
    fill(this.cellColor);
    stroke(0);
    strokeWeight(1);
    rect(this.x, this.y, w, w);//w is the size of each cell(declared as a global variable in the chess tab)
    if(this.isOccupied){
      this.piece.show(this.x,this.y);
    }
  }

  void mouseHover()// displays the mouseHover effect
  {
    if (mouseX>this.x && mouseY>this.y && mouseX<this.x+w && mouseY<this.y+w)
    {
      strokeWeight(2);
      stroke(255);
      noFill();
      rect(this.x+2, this.y+2, w-3, w-3);
    }
  }
}