user_homonyms = [
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

	["and", "end"],
	["army", "armie"],
	["atom", "adam"],
	["acxiom", "axios"],
	["can", "ken"],
	["cube", "kubernetes"],
	["chante", "chanti"],
	["shanti", "chanti"],
	["dharma", "dhamma"],
	["doctor", "docker"],
	["evil", "eval"],
	["exercise", "exercism"],
	["grip", "grep"],
	["hero", "heroku"],
	["however", "hover"],
	["jason", "JSON"]
	["layer", "lair"],
	["no", "null"],
	["paul", "pull"],
	["progress", " ("],
	["while", "wow"],
	["winter", "linter"]
	["with", "width"],
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
