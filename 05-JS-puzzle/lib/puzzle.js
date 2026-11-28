// Select all the tiles
const tiles = document.querySelectorAll("td");
const table = document.querySelector("table");

const canMove = (tile) => {
  // TODO: Check if a tile has an empty neighbour
  // tile is an object that represents a single <td> element
  // get all 4 (maximum) adjacent tiles
  // check if any of them have class "empty"
  // get the element in the same row that have cellIndex + 1 of the tile
  const rightTileIndex = tile.cellIndex + 1;
  const rightTile = tile.parentNode.cells[rightTileIndex];

  const leftTileIndex = tile.cellIndex - 1;
  const leftTile = tile.parentNode.cells[leftTileIndex];

  const topTileRowIndex = tile.parentNode.rowIndex - 1;
  let topTile = undefined;
  if (topTileRowIndex >= 0) {
    topTile = table.rows[topTileRowIndex].cells[tile.cellIndex];
  }

  const bottomTileRowIndex = tile.parentNode.rowIndex + 1;
  let bottomTile = undefined;
  if (bottomTileRowIndex <= 3) {
    bottomTile = table.rows[bottomTileRowIndex].cells[tile.cellIndex];
  }

  const adjacentCells = [topTile, bottomTile, rightTile, leftTile];
  const emptyTile = document.querySelector(".empty");

  return adjacentCells.includes(emptyTile);
};

const moveTile = (element) => {
  const emptyTile = document.querySelector(".empty");
  // remove the empty class from the empty tile
  emptyTile.classList.remove("empty");
  // add the text (e.g. 8) to the empty tile
  emptyTile.innerText = element.innerText;
  // erase the text (e.g. 8) from the clicked tile
  element.innerText = "";
  // apply the empty class to the clicked tile
  element.classList.add("empty");
};

const checkIfPlayerWins = () => {
  // TODO: Check if player has won
  // check the tiles, and see if the numbers are sorted
  const numbers = Array.from(tiles).map((tile) => parseInt(tile.innerText));
  // filter NaN for simplicity sake
  const filteredNumbers = numbers.filter((number) => !isNaN(number));

  // give the array to the sort checker
  if (checkSorted(filteredNumbers)) {
    alert("You have won!!");
  }
};

const checkSorted = (arr) => {
  for (let i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      return false;
    }
  }
  return true;
};

// Add event listener on each tile - Do not change the following
tiles.forEach((tile) => {
  tile.addEventListener("click", () => {
    if (canMove(tile)) {
      moveTile(tile);
      checkIfPlayerWins();
    }
  });
});
