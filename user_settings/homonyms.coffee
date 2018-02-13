user_homonyms = [
	["_", "render"],
	["8", "ate"],
	["first", "1st"],
	["second", "2nd"],
	["third", "3rd"],
	["fourth", "4th"],
	["fifth", "5th"],
	["six", "6th"],
	["sixth", "6th"],
	["seventh", "7th"],
	["eighth", "8th"],
	["ninth", "9th"],

	["acxiom", "axios"],
	["and", "end", "an"],
	["army", "armie"],
	["art", "Ayush"],
	["atom", "adam"],
	["beautiful", "beautify"],
	["brian", "Bryan"],
	["can", "ken"],
	["cube", "kubernetes"],
	["chante", "chanti"],
  ["crack", "kraken"],
	["constance", "constants"],
	["shanti", "chanti"],
	["dharma", "dhamma"],
	["doctor", "docker"],
	["enter", "inner"],
	["evil", "eval"],
	["except", "accept"],
	["exercise", "exercism"],
	["grip", "grep"],
	["hero", "heroku"],
	["however", "hover"],
	["jane", "chain"],
	["jared", "Jarett"],
	["jason", "JSON"],
	["just", "jest"],
	["layer", "lair"],
	["loader", "lodash"],
	["marion", "merrin", "beeb"],
	["no", "null"],
	["matter", "natter"],
	["paul", "pull"],
	["phil", "fill"],
	["progress", " ("],
	["sir", "0"],
	["string", "JSON.stringify"],
	["ra", "array"],
	["while", "wow"],
	["will", "twilio"],
	["winter", "linter"],
	["with", "width"],
	["worn", "warn", "warren"]
]

homonyms = Packages.get('homonyms').homonyms
if homonyms
	for pair in user_homonyms
	  homonyms.values.push(pair)
	homonyms.initialize()

else
	pack = Packages.get('homonyms')
	pack.defer ->
		homonyms = Packages.get('homonyms').homonyms
		for pair in user_homonyms
		  homonyms.values.push(pair)
		homonyms.initialize()
