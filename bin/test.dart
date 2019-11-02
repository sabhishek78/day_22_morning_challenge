import 'main.dart';

import 'package:test/test.dart';

void main() {


  test('Minesweeper', (){

    expect(mineSweeper(mineSweeper([[1,0,1],[1,0,1],[1,0,1]])),[[9, 4, 9], [9, 6, 9], [9, 4, 9]]);


  expect(mineSweeper([
    [0,  0],
    [0,  1, 0],
    [0,  0, 1],
    [1, 1, 0, 0],
  ]),[[1, 1], [1, 9, 2], [3, 4, 9], [9, 9, 2, 1]]);
  });

  test('Group the array', (){

    expect(groupTheArray([1, 2, 3, 4, 5, 6,7,8,9,10,11], 5),[[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11]]);
expect(groupTheArray([1, 2, 3, 4, 5, 6,7,8,9,10,11], 2),[[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11]]);
  });



}