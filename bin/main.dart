// Challenge 1
// Write test cases for the challenges including boundary conditions

// Challenge 2
// Minesweeper Number of Neighbouring Mines
// Create a function that takes an array representation of a Minesweeper board,
// and returns another board where the value of each cell is the amount of its neighbouring mines.
// Examples
//  The input may look like this:
//
//  [
//    [0, 1, 0, 0],
//    [0, 0, 1, 0],
//    [0, 1, 0, 1],
//    [1, 1, 0, 0],
//  ]
//  The 0 represents an empty space . The 1 represents a mine.
//
//  You will have to replace each mine with a 9 and each empty space with the
//  number of adjacent mines, the output will look like this:
//
//  [
//    [1, 9, 2, 1],
//    [2, 3, 9, 2],
//    [3, 9, 4, 9],
//    [9, 9, 3, 1],
//  ]
List<List<int>> mineSweeper(List<List<int>>input){
  List<List<int>> result=[];
  for(int i=0;i<input.length;i++){
    List<int> resultRow=[];
    for(int j=0;j<input[i].length;j++){
      resultRow.add(calcNumber(input,i,j));
    }
    result.add(resultRow);
  }
  return result;
}
int calcNumber(List<List<int>> input, int row,int col){
  if(input[row][col]==1){
    return 9;
  }
  int count=0;
  for(int offsetRow=-1;offsetRow<=1;offsetRow++){
    for(int offsetCol=-1;offsetCol<=1;offsetCol++){
      if(isBomb(input,row+offsetRow,col+offsetCol)){
        count++;
      }
    }
  }
  return count;
}
bool isBomb(List<List<int>>input,int row, int col){
  if(row<0){
    return false;
  }
  if(col<0){
    return false;
  }
  if(row>=input.length){
    return false;
  }
  if(col>= input[row].length){
    return false;
  }
  return input[row][col]==1;
}
// Challenge 3
// Group in Order
// Create a function that groups an array of numbers based on a size parameter. The size represents the maximum length of each sub-array.
//
//  [1, 2, 3, 4, 5, 6], 3
//  [[1, 3, 5], [2, 4, 6]]
/// Divide array into groups of size 3.
//
//  [1, 2, 3, 4, 5, 6], 2
//  [[1, 4], [2, 5], [3, 6]]
/// Divide array into groups of size 2.
//
//  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 4
//  [[1, 4, 7, 10], [2, 5, 8, 11], [3, 6, 9]]
/// "Leftover" arrays are okay.
///
///
///
List<List<int>> groupTheArray(List<int>array,int n){

  List<List<int>> resultList=[];
  int printCount=0;
 int repetitons= array.length ~/ n;
 //print(repetitons);
 int leftOverCount=array.length %n;
 //print(leftOverCount);
  //print array for the given size with repetitions
  printCount=0;
  int arrayIndex=0;
  int rangeIncrementer=1;
  while(printCount<repetitons){
    List<int>tempResultList=[];
    for(int i=arrayIndex;i<n*rangeIncrementer;i++,arrayIndex++){

      tempResultList.add(array[arrayIndex]);
    }
    printCount++;
    rangeIncrementer++;
   // print(tempResultList);
    resultList.add(tempResultList);
  }
  //addding leftovers
  List<int>tempResultList=[];
  int startingIndex=n*repetitons;
  for(int i=0;i<leftOverCount;i++)
    {
      tempResultList.add(array[startingIndex++]);
    }
  resultList.add(tempResultList);

  return(resultList);

}
List<List<int>> largestPossibleSubArray(List<int>array){

}











main() {
print(mineSweeper([[0,0,1],[1,0,1],[1,1,1]]));
print(mineSweeper([
  [0,  0],
  [0,  1, 0],
  [0,  0, 1],
  [1, 1, 0, 0],
]));
print(groupTheArray([1, 2, 3, 4, 5, 6,7,8,9,10,11], 5));
print(groupTheArray([1, 2, 3, 4, 5, 6,7,8,9,10,11], 2));
}
