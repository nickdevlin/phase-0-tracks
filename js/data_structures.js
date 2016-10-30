var colors = ["red", "orange", "yellow", "burnt sienna"]
var horseNames = ["Bill", "Ted", "Excellent", "Adventure"]

colors.push("indigo");
horseNames.push("Napoleon");

//var coloredHorses = [horseNames[0]: colors[0], horseNames[1]: colors[1], horseNames[2]: colors[2], horseNames[3]: colors[3], horseNames[4]: colors[4]]

function Car(year, make, model) {
	console.log("Our top new model:", this)
	this.year = year;
	this.make = make;
	this.model = model;
	this.rev = function() {console.log("Vroom!")}
	console.log("We built a car.")
}

var anotherCar = new Car(2019, "Tesla", "Snob");
console.log(anotherCar);
console.log("Our car goes fast:");
anotherCar.rev();

var niceCar = new Car(2016, "BMW", "Swank");
console.log(niceCar);
var crapCar = new Car(1961, "Ford", "Boltbucket")
console.log(crapCar);