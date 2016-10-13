national_league = {
	wash_nats: {
		manager: 'Matt Williams',
		ballpark: 'Nationals Park',
		players: ['Bryce Harper', 'Anthony Rendon', 'Sammy Solis']
	},
	
	la_dodgers: {
		manager: 'Dave Roberts',
		ballpark: 'Dodger Stadium',
		players: ['Andre Ethier', 'Julio Urias', 'Clayton Kershaw']
	},
	
	chi_cubs: {
		manager: 'Joe Maddon',
		ballpark: 'Wrigley Field',
		players: ['Jake Arrieta', 'Dexter Fowler', 'Javier Baez']
	}
}

p national_league[:la_dodgers][:players][2]
national_league[:wash_nats][:manager] = 'Dusty Baker'
p national_league[:wash_nats][:manager]
national_league[:chi_cubs][:players].push("Carl Edwards")
