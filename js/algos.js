//function takes array of words
//finds length of each word
//returns longest word
var longestString = function (array) {
	for (var i = 0; i < array.length; i++) {
		var stringLengths = [];
		stringLengths.push(array[i].length);
		bigOne = getMax(stringLengths);
		console.log(bigOne[i]);
}
}

//function takes two objects
//if key1 === key2 || value1 === value2, return true
//else return false

//function receives integer
//reads integer, builds array of strings equal to value of integer
