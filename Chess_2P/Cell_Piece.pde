class Piece
{
  boolean king = false, queen = false, rook = false, bishop = false, knight = false, pawn = false;
  int team = 0;
  boolean moved = false;
  void show(float x, float y)
  {
    //Replace with images
    if(team == 1){
      if(pawn){
        image(pawn1,x,y);
      }else if(knight){
        image(knight1,x,y);
      }else if(rook){
        image(rook1,x,y);
      }else if(bishop){
        image(bishop1,x,y);
      }else if(queen){
        image(queen1,x,y);
      }else if(king){
        image(king1,x,y);
      } 
    }else if(team == 2){
      if(pawn){
        image(pawn2,x,y);
      }else if(knight){
        image(knight2,x,y);
      }else if(rook){
        image(rook2,x,y);
      }else if(bishop){
        image(bishop2,x,y);
      }else if(queen){
        image(queen2,x,y);
      }else if(king){
        image(king2,x,y);
      }      
    }
  }
  
  void showmoves()
  {
    
  }
}