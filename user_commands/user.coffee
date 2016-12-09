Package.commands

  'open-atom-here':
    spoken: 'atom here'
    enabled: true
    description: "open atom here"
    continuous: false
    scope: 'command-line'
    action: ->
        @string "atom ."
        @key "Return"

  'beautify-editor':
    spoken: 'beautify'
    enabled: true
    description: "beautify in atom editor"
    continuous: false
    scope: 'atom'
    action: ->
        @key "B", "control option"

  "camera-center":
    spoken: 'camera center'
    enabled: true
    description: "center the smartnav"
    continuous: false
    action: ->
      @key "C", "control shift"

  "camera-on":
    spoken: 'camera on'
    enabled: true
    description: "turn camera on or off"
    continuous: false
    action: ->
        @key "S", "control shift"

  "camera-pause":
    spoken: 'camera pause'
    enabled: true
    description: "turn camera on or off"
    continuous: false
    action: ->
        @key "P", "control shift"

  "camera-precise":
    spoken: 'camera precise'
    enabled: true
    description: "turn camera precision on or off"
    continuous: false
    action: ->
        @key "A", "control shift"

  "camera-view":
    spoken: 'camera view'
    enabled: true
    description: "toggles precision tracking"
    continuous: false
    action: ->
      @key "M", "control shift"

  "camera-quit":
    spoken: 'camera quit'
    enabled: true
    description: "quit smart nav"
    continuous: false
    action: ->
      @applescript('tell application "SmartNav" to quit')

  "right-comma-space":
    spoken: 'chris whip'
    enabled: true
    description: "combine chris and swipe"
    continuous: false
    action: ->
      @do "cursor:right"
      @do "symbols:comma-space"

  "clear-terminal":
    spoken: "clear"
    enabled: true
    description: "clear terminal, or console"
    continuous: false
    scope: 'command-line'
    action: ->
      @key "K", "command"

  "double-ampersand-padded":
    spoken: "dandy"
    enabled: true
    description: "double-ampersand-padded alias"
    autoSpacing: 'never never'
    action: ->
        @do "symbols:double-ampersand-padded"

  "padded-asterisk":
    spoken: 'death star'
    enabled: true
    description: 'padded *'
    autoSpacing: 'never never'
    action: ->
        @string " * "

  'space-then-dash':
    spoken: 'demin'
    autoSpacing: "always never"
    enabled: true
    scope: 'command-line'
    multiPhraseAutoSpacing: "always never"
    description: "inserts a space then a ' -'. useful for arguments at the ' +
    'command line"
    action: ->
        @string " -"

  'padded-questionmark':
    spoken: 'dequesto'
    description: "inserts a ? with padding on either side"
    enabled: true
    autoSpacing: 'never never'
    action: ->
      @string " ? "

  'padded-pipe':
    spoken: 'despike'
    description: "inserts a pipe with a space in front of it"
    enabled: true
    autoSpacing: 'never never'
    action: ->
      @string " | "

  'add-list-entry':
    spoken: 'listy'
    enabled: true
    description: 'add another entry to a list with the same style of quotes that you are using'
    action: ->
        @key('right', 'shift')
        @copy()
        @key "right"
        @string ", "
        @paste()
        @paste()
        @key "left"

  'space-then-double-dash':
    spoken: 'longdemin'
    autoSpacing: "always never"
    multiPhraseAutoSpacing: "always never"
    enabled: true
    description: "inserts a space then a ' --'. useful for arguments at the" +
    " command line"
    action: ->
        @string " --"

  'dash-then-space':
    spoken: 'mindy'
    autoSpacing: "never never"
    multiPhraseAutoSpacing: "never never"
    enabled: true
    description: "inserts a space then a '-'. useful for arguments at the" +
    " command line"
    action: ->
        @string "- "

  'remove-space-and-return':
    spoken: 'nudgle it'
    description: 'remove a space before the adjacent word on the left and go to next word'
    enabled: true
    action: ->
        @do 'text-manipulation:nudge-text-left'
        @do 'cursor:word-right'
        # @key 'right', 'option'

  'open-finder-here':
    description: "open finder here"
    spoken: 'open here'
    scope: 'command-line'
    enabled: true
    action: ->
      @string "open ."
      @key "Return"

  'move-pane-left':
    spoken: 'pain left'
    enabled: true
    description: 'go to the left pane'
    scope: 'atom'
    action: ->
      @key 'k', 'command'
      @key 'left', 'command'

  'move-pane-right':
    spoken: 'pain right'
    enabled: true
    description: 'go to the right pane'
    scope: 'atom'
    action: ->
      @key 'k', 'command'
      @key 'right', 'command'

  'move-pane-down':
    spoken: 'pain down'
    enabled: true
    description: 'go to the below pane'
    scope: 'atom'
    action: ->
      @key 'k', 'command'
      @key 'down', 'command'

  'move-pane-up':
    spoken: 'pain up'
    enabled: true
    description: 'go to the above pane'
    scope: 'atom'
    action: ->
      @key 'k', 'command'
      @key 'up', 'command'

  'shorthand-function-signature':
    spoken: 'peacock'
    autoSpacing: "always never"
    multiPhraseAutoSpacing: "always never"
    enabled: true
    description: "inserts a function signature"
    action: ->
      @string '() => {}'
      @left()

  'remove-folder-recursive':
    spoken: 'rim raff'
    autoSpacing: "auto never"
    multiPhraseAutoSpacing: "auto never"
    enabled: true
    description: "inserts rm -rf"
    action: ->
      @string 'rm -rf '

  'closing-salutation':
      enabled: true
      spoken: 'salutation'
      grammarType: "textCapture"
      description: 'closing of a letter or email with variable salutation'
      continuous: false
      action: (input) ->
          result = input[0][0].toUpperCase() + input[0].slice(1)
          if input.length > 1
              result += ' ' + input.slice(1).join(' ')
          @string result + ","
          @do "common:enter"
          @string "Alex"

  'shift-return':
    spoken: 'sky return'
    enabled: true
    description: "press shift + return"
    continuous: false
    action: ->
        @key 'return', 'shift'

  'open-dash':
    spoken: 'stacks it'
    enabled: true
    description: "opens up dash"
    continuous: false
    action: ->
        @key 'D', 'control option'

  'exclamation-double-equal':
    spoken: 'super banquall'
    enabled: true
    description: "!=="
    autoSpacing: "never never"
    multiPhraseAutoSpacing: "never never"
    continuous: false
    action: ->
        @string ' !== '

  'super-laugh':
    spoken: 'super laugh'
    enabled: true
    grammarType: 'integerCapture'
    scope: 'global'
    continuous: false
    repeatable: false
    needsCommand: true
    vocabulary: true
    description: 'laugh like you mean it'
    action: (num) ->
        result = 'Ha'
        n = num ? Math.floor(Math.random() * 20)
        for [0..n]
          l = Math.random()
          if l <= 0.9
            result += 'ha'
          else
            result += 'h'

        result += 'a '
        @string result

  'this-dot':
    spoken: 'teapot'
    enabled: true
    description: "facilitate this. convention"
    autoSpacing: "normal"
    multiPhraseAutoSpacing: "normal"
    continuous: false
    action: ->
        @string 'this.'

  'send-as-text-message':
    spoken: 'text me that'
    grammarType: "individual"
    description: "open messages and send clipboard contents as a text message"
    enabled: true
    continuous: false
    action: ->
        @openApplication('Messages')
        @delay(2000)
        @key('N', 'command')
        @delay(300)
        @string "lex.jacobs@icloud.com"
        @delay(300)
        @key('return')
        @delay(300)
        @do "clipboard:paste"
        @delay(300)
        @key('return')

  'space-before-last-utterance':
    spoken: 'tragically'
    enabled: true
    continuous: false
    description: 'move the cursor to the beginning of the last utterance and make a space'
    action: () ->
        @do "previous-text:select"
        @do "cursor:left"
        @do "symbols:space"
        @do "cursor:way-right-then-space"
