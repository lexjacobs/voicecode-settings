pack = Packages.register
  name: 'ableton'
  description: 'Commands for ableton live'
  applications: ['com.ableton.live']

pack.commands
  'arm-recording':
    spoken: 'record'
    description: 'toggle record button'
    enabled: true
    action: -> @key 'f9'
  'arrangement-reset':
    spoken: 'arrangement'
    description: 'back to arrangement'
    enabled: true
    action: -> @key 'f10'
  'edit-key-map':
    spoken: 'map key'
    description: 'edit key map'
    enabled: true
    action: -> @key 'k', 'command'
  'edit-midi-map':
    spoken: 'map medium'
    description: 'edit midi map'
    enabled: true
    action: -> @key 'm', 'command'
  'follow-scroll':
    spoken: 'follow'
    description: 'toggle scroll follow'
    enabled: true
    action: -> @key 'f', 'command shift'
  'grid-fixed':
    spoken: 'grid fixed'
    description: 'make grid fixed'
    enabled: true
    action: -> @key '5', 'command'
  'grid-narrow':
    spoken: 'grid narrow'
    description: 'make grid more narrow'
    enabled: true
    action: -> @key '1', 'command'
  'grid-snap':
    spoken: 'grid snap'
    description: 'set grid to snap'
    enabled: true
    action: -> @key '4', 'command'
  'grid-wider':
    spoken: 'grid wider'
    description: 'make grid wider'
    enabled: true
    action: -> @key '2', 'command'
  'grid-3':
    spoken: 'grid triple'
    description: 'reveal triplet grid'
    enabled: true
    action: -> @key '3', 'command'
  'mute-track':
    spoken: 'mute track'
    grammarType: 'integerCapture'
    description: 'toggle record button'
    enabled: true
    action: (input) ->
      console.log input
      @key ('f' + input)
  'new-track':
    spoken: 'new track'
    grammarType: 'oneArgument'
    description: 'create a new track specified by argument'
    enabled: true
    action: (input) ->
      if not input or input is 'audio'
        @key 't', 'command'
        return
      if input is 'medium'
        @key 't', 'command shift'
        return
      if input is 'return'
        @key 't', 'command option'
        return
  'play-stop':
    spoken: 'play'
    description: 'toggle play stop'
    enabled: true
    action: -> @key 'space'
  'show-hide-inputs':
    spoken: 'show input'
    description: 'toggle in/out section'
    enabled: true
    action: -> @key 'i', 'command option'
  'show-hide-mixer':
    spoken: 'show mixer'
    description: 'toggle mixer section'
    enabled: true
    action: -> @key 'm', 'command option'
  'show-hide-returns':
    spoken: 'show return'
    description: 'toggle returns section'
    enabled: true
    action: -> @key 'r', 'command option'
  'show-hide-sends':
    spoken: 'show send'
    description: 'toggle sends section'
    enabled: true
    action: -> @key 's', 'command option'
  'show-hide-overview':
    spoken: 'show overview'
    description: 'toggle overviews section'
    enabled: true
    action: -> @key 'o', 'command option'
