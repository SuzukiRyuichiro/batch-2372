const capitalize = (string) => {
  // make everything lowercase
  const lowerCase = string.toLowerCase();
  // take the first character and uppercase it
  const firstCharacter = lowerCase[0].toUpperCase();
  const remainingCharacters = lowerCase.slice(1);

  return `${firstCharacter}${remainingCharacters}`;
};

console.log(capitalize("foobar") === "Foobar");
console.log(capitalize("fOObar") === "Foobar");
console.log(capitalize("FOOBAr") === "Foobar");
