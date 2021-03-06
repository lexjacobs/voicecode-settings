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

  'open-sublime-here':
    spoken: 'sublime here'
    enabled: true
    description: "open sublime here"
    continuous: false
    scope: 'command-line'
    action: ->
        @string "subl ."
        @key "Return"

  'backbone-template-tag':
    spoken: 'backbone tag'
    enabled: true
    description: "underscore template substitution tags"
    continuous: true
    scope: 'atom'
    action: ->
        @string "<%=  %>"
        @do "cursor:left"
        @do "cursor:left"
        @do "cursor:left"

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
    continuous: true
    action: ->
      @do "cursor:right"
      @do "symbols:comma-space"

  "return-alternate":
    spoken: 'chuck'
    enabled: true
    description: "often misunderstood and combination"
    continuous: true
    action: ->
      @key "return"

  "clear-terminal":
    spoken: "clear"
    enabled: true
    description: "clear terminal, or console"
    continuous: false
    action: ->

      if Scope.active('command-line')
        @key "K", "command"
      if Scope.active('chrome')
        @string('clear()')
        @key "return"
      else
        @

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
    multiPhraseAutoSpacing: "never never"
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

  'do-not-disturb':
    spoken: 'do not disturb'
    enabled: true
    description: 'turn on do not disturb and return mouse to previous position'
    continuous: false
    action: ->
      @do 'user:user:camera-pause'
      # store previous mouse position
      position = @getMousePosition()
      {x, y} = position
      # move to the top right corner and click
      @positionMouse(1410, 12, 1)
      @delay(200)
      @do 'mouse:click'
      @delay(600)
      @positionMouse(1400, 148, 1)
      @do 'scrolling:way-up'
      @delay(500)
      @do 'mouse:click'
      @delay(500)
      # return to previous mouse position
      @positionMouse(x, y, 1)
      @do 'mouse:click'
      @do 'user:user:camera-pause'

  'double-click-copy-switch':
    spoken: 'dookoosh quick'
    enabled: true
    description: 'double-click, copy, switch applications'
    action: ->
      @do 'mouse-combo:double-click-copy'
      @do 'application:switch-to-previous'

  'double-click-paste-switch':
    spoken: 'doopark swick'
    enabled: true
    description: 'double-click, paste, switch applications'
    action: ->
      @do 'mouse-combo:double-click-paste'
      @do 'application:switch-to-previous'

  'park-mouse':
    spoken: 'drag park'
    enabled: true
    description: "put mouse into the top left corner, quit camera, turn off microphone"
    action: ->

      # turn off camera
      @do('user:user:camera-quit')
      # put mouse in corner
      @positionMouse(100, 100, 1) # index?
      @positionMouse(0, 0, 1) # index?
      @delay(50)
      @positionMouse(100, 100, 1) # index?
      @positionMouse(0, 0, 1) # index?
      # # in case monitor 2 is hooked up
      # @positionMouse(100, 100, 2) # index?
      # @positionMouse(0, 0, 2) # index?
      # turn off microphone
      @do('dragon_darwin:microphone-sleep')

      @delay(200)
      # move mouse again
      @positionMouse(100, 100, 1) # index?
      @positionMouse(0, 0, 1) # index?
      # # in case monitor 2 is hooked up
      # @positionMouse(100, 100, 2) # index?
      # @positionMouse(0, 0, 2) # index?

  'double-click-and-capitalize':
    spoken: 'duchamp'
    enabled: true
    description: 'double-click and capitalize'
    action: ->
      @do 'mouse:double-click'
      @do 'format:capitalize-next-word'

  "put-voice-code-to-bed":
    spoken: 'super quit voice code'
    enabled: true
    description: "turn off the camera and quit VoiceCode"
    tags: ["dragon"]
    action: ->
      @do 'user:user:camera-quit'
      @delay 100
      @do 'user:user:voicecode-quit'

  'press-function-key':
    grammarType: 'integerCapture'
    description: 'press function key'
    spoken: 'funky'
    continuous: false
    enabled: true
    action: (number) ->
      keycodes = ['122', '120', '99', '118', '96', '97', '98', '100', '101', '109', '103', '111', '105', '107', '113', '106', '64', '79', '80', '90']
      @applescript "tell application \"System Events\" to key code #{keycodes[number - 1]}"

  'dictate-with-dictation':
    spoken: 'hi dictation'
    enabled: true
    continuous: true
    description: 'transcribe via dictation'
    action: ->
        @key('\\', 'command')

  'search-with-siri':
    spoken: 'hi siri'
    enabled: true
    description: 'engage with the siri desktop application'
    action: ->
        @key('H', 'command option control')

  'add-list-entry':
    spoken: 'listy'
    enabled: true
    continuous: true
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
    spoken: 'move pain left'
    enabled: true
    description: 'move the current pane to the left'
    scope: 'atom'
    action: ->
      @key 'left', 'command control shift'

  'move-pane-right':
    spoken: 'move pain right'
    enabled: true
    description: 'move the current pane to the right'
    scope: 'atom'
    action: ->
      @key 'right', 'command control shift'

  'move-pane-down':
    spoken: 'move pain down'
    enabled: true
    description: 'move the current pane down'
    scope: 'atom'
    action: ->
      @key 'down', 'command control shift'

  'move-pane-up':
    spoken: 'move pain up'
    enabled: true
    description: 'move the current pane up'
    scope: 'atom'
    action: ->
      @key 'up', 'command control shift'

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
    description: 'press shift + return'
    continuous: false
    action: ->
        @key 'return', 'shift'

  'return-alternate':
    spoken: 'slap'
    enabled: true
    description: 'press return'
    continuous: true
    action: ->
      @do 'common:enter'

  'open-dash':
    spoken: 'stacks it'
    enabled: true
    description: 'opens up dash'
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

  'capitalize-previous-word':
    spoken: 'super big'
    enabled: true
    description: 'make <- that big'
    action: ->
      @do 'selection:previous-word'
      @do 'format:capitalize-next-word'
      @do 'cursor:right'

  'enforce-homonym-previous':
    spoken: 'super correct'
    enabled: true
    description: 'select the previous word and output its homonym'
    continuous: false
    action: ->
        @do 'selection:previous-word'
        @do 'homonyms:cycle'
        @do 'cursor:right'

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
    continuous: true
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

  'pick-first-word':
    spoken: 'pickle'
    grammarType: "textCapture"
    enabled: true
    autoSpacing: "soft never"
    action: (input) ->
      if input
        @string input[0]

  'pick-last-word':
    spoken: 'tickle'
    grammarType: "textCapture"
    enabled: true
    autoSpacing: "soft never"
    action: (input) ->
      if input
        @string input[input.length-1]

  "voicecode-quit":
    spoken: 'quash voicecode'
    enabled: true
    description: "quit VoiceCode"
    continuous: false
    action: ->
      @applescript('tell application "VoiceCode" to quit')

  "amend-uncommitted-git-contents":
    spoken: 'super amendment'
    enabled: true
    description: "add all and amend last git commit"
    continuous: false
    action: ->
      @string 'git add .'
      @key "return"
      @delay(300)
      @string 'git commit --amend --no-edit'
      @key "return"

  "list-folder-contents":
    spoken: 'super list'
    enabled: true
    scope: 'command-line'
    description: "list shell folder contents with full details"
    continuous: false
    action: ->
      @string "ls -lisa"
      @key "return"

  "activate-shorty":
    spoken: 'shorty'
    enabled: true
    grammarType: "singleSearch"
    description: "opens shortcat window. Say 'shorty' once to bring up ui. say 'shorty arch brov' or whatever letter combo you want to click on to bring focus to that element. Say 'shock' to execute the click on that element."
    action: (input) ->

        input = input.value
        # if the command is followed by a phrase
        if input and input.length and (@currentApplication().name is "Shortcat")

            input.split("").forEach((letter) =>
                @delay(50)
                @key letter, "control"
            )

        # if the command is not followed by a phrase
        else
            @key "s", "command option control"
            @delay(200)
            @key "."

  'search-dialogue-then-paste':
    spoken: 'spark oh'
    enabled: true
    continuous: false
    description: 'trigger common:find followed by clipboard:paste'
    action: ->
      @do 'common:find'
      @delay(100)
      @do 'clipboard:paste'
      @do 'common:enter'

  'delete-forward-and-reverse':
    spoken: 'slurp'
    enabled: true
    description: 'delete backwards then forward'
    action: ->
      @do 'common:delete'
      @do 'common:forward-delete'

  'segmented-screen-capture':
    spoken: 'super screen capture'
    enabled: true
    continuous: false
    description: 'crosshair selection for screen save'
    action: ->
        @key "4", "command shift"

  'segmented-screen-copy':
    spoken: 'super screen copy'
    enabled: true
    continuous: false
    description: 'crosshair selection for screen clipboard copy'
    action: ->
        @key "4", "command control shift"

  'move-desktop':
    spoken: 'super screen'
    enabled: true
    continuous: false
    grammarType: 'oneArgument'
    description: 'explicit keypresses for moving between desktop spaces'
    action: (input) ->

      alternateDesktopView = (direction) =>
        @key(direction, 'control')
      moveDesktop = (key) =>
        @do('user:user:press-function-key', key)

      switch input
        when 'down' then alternateDesktopView '7'
        when 'up' then alternateDesktopView '8'
        when 'left' then moveDesktop(9)
        when 'right' then moveDesktop(10)
        else return

  'open-side-menu':
    spoken: 'super side menu'
    enabled: true
    description: 'open side menu and move mouse to middle of pane'
    continuous: false
    action: ->
      @do 'user:user:camera-pause'
      @positionMouse(1410, 12, 1)
      @delay(200)
      @do 'mouse:click'
      @delay(600)
      @positionMouse(1300, 500, 1)
      @do 'user:user:camera-pause'

  'close-bracket-html':
    spoken: 'super tag'
    enabled: true
    continuous: true
    tags: ['user']
    description: 'close html tag'
    action: ->
        @do "common:forward-delete"
        @string ">"

  'format-comment-html':
    spoken: 'super trundle'
    enabled: true
    continuous: false
    tags: ['user']
    description: 'add html style comment block'
    action: ->
        @string "/* "
        @string " */"
        @key "left"
        @key "left"
        @key "left"

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

  'format-comment-for-react':
    enabled: true
    spoken: 'super trundle react'
    description: 'react specific comment block'
    continuous: false
    action: () ->
        @do "clipboard:cut"
        @string '{/*  */}'
        @left(4)
        @do "clipboard:paste"
