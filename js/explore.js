// takes string
// breaks string into characters
// reverses array of characters
// joins into new string
// returns new string

function reverse(word) {
    var newString = "";
    for (var i = word.length - 1; i >= 0; i--) { 
        newString += word[i];
    }
    console.log(newString);
}
 
if (1 === 1) {
	reverse("go cubs go");
}
	else {
	console.log("Nope.");
}