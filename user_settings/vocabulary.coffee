Settings.vocabulary = {
  vocabulary: [ # teach dragon new words
    'github',
    'redux',
    'node js',
    'node.js',
    'npm install',
    'npm',
    'coffeescript'
  ],
  vocabularyAlternate: { # text replacement on dragon side

  },
  translations: { # text replacement on VoiceCode side
    'a sink': 'async'
    'ads': 'adds'
    'anti-': 'anti'
    'ballinger': 'bollinger'
    'bullinger': 'bollinger'
    'bosch': "'"
    'char lug tanker': 'console.log('
    'coffee script': 'coffeescript'
    'consul': 'console'
    'dotson': '. '
    'dookoosh click': 'dookoosh quick'
    'doopark slick': 'doopark swick'
    'e-mail': 'email'
    'e2 e': 'e2e'
    'e2 be': 'e2e'
    'eu la': 'EULA'
    'front and': 'front end'
    'gs k': 'gsk'
    'gray': 'grey'
    'i\'d': 'I\'d'
    'i\'ve': 'I\'ve'
    'i/o': 'io'
    'javascript': 'JavaScript'
    'js x': 'jsx'
    'jet paul': 'git pull '
    'get paul': 'git pull '
    'git paul': 'git pull '
    'get paul': 'git pull '
    'multi-': 'multi'
    'mpm': 'npm'
    'non-': 'non'
    'nonbreaking space': '&nbsp ;'
    '9 breaking space': '&nbsp; '
    'none breaking space': '&nbsp; '
    'oh h lc': 'ohlc'
    'oh 8 chelsea': 'ohlc'
    'oh a chelsea': 'ohlc'
    'oh hoc': 'ohlc'
    'paypal': 'PayPal'
    'pre-': 'pre'
    'products': '()'
    'pseudo-': 'pseudo '
    're factor': 'refactor'
    'as css': 'scss'
    'as css': 'scss'
    'ro': 'row'
    'sparkle': 'spark oh'
    'sparky': 'spark oh'
    'super 1': 'One'
    'tanker': '`'
    'uu id': 'uuid'
    'you uid': 'uuid'
    'you you id': 'uuid'
    'demin virg': '-v'
    '-virg': '-v'
    'voice code': 'VoiceCode'
    're-': 're'
    'redox': 'redux'
    'so linear': 'solinea'
    'so a linear': 'solinea'
    'touché': 'touch'
    'web pack': 'webpack'
    'zug': 'z'
  },
  sequences: { # common sequences of commands (to boost accuracy)
    'symbols:slash': [
      'repetition:command-1', # reinforcing 🔉slash wink🔉 for //
      'repetition:command-2', # reinforcing 🔉slash soup🔉  for javascript //
      'bin', # reinforce the phrase 🔉slash bin🔉 => `/bin`
    ]
    'common:delete': [
      'symbols:surround-spaces', 'cursor:down', 'common:forward-delete'
    ]
    'git:git-command': [
      'push origin master'
    ]
    'symbols:dot': [
      'common:enter'
    ]
    'common:delete': [
      'repetition:command-1', 'repetition:command-2', 'repetition:command-3', 'repetition:command-4', 'repetition:command-5'
    ]
    'cursor:down': [
      'repetition:command-1', 'repetition:command-2', 'repetition:command-3', 'repetition:command-4', 'repetition:command-5'
    ]
    'cursor:up': [
      'common:enter', 'repetition:command-1', 'repetition:command-2', 'repetition:command-3', 'repetition:command-4', 'repetition:command-5'
    ]
  }
}
