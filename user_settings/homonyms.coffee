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

	["and", "end", "an"],
	["army", "armie"],
	["atom", "adam"],
	["acxiom", "axios"],
	["beautiful", "beautify"],
	["can", "ken"],
	["cube", "kubernetes"],
	["chante", "chanti"],
  ["crack", "kraken"],
	["constance", "constants"],
	["shanti", "chanti"],
	["dharma", "dhamma"],
	["doctor", "docker"],
	["evil", "eval"],
	["except", "accept"],
	["exercise", "exercism"],
	["grip", "grep"],
	["hero", "heroku"],
	["however", "hover"],
	["jane", "chain"],
	["jason", "JSON"],
	["just", "jest"],
	["layer", "lair"],
	["no", "null"],
	["paul", "pull"],
	["progress", " ("],
	["string", "stringify"],
	["while", "wow"],
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
