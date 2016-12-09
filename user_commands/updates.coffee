darwin = Packages.get 'darwin'
darwin.implement
  'system:open-launcher': ->
    @key ' ', 'option'
    @delay 100
    @

# _.extend Commands.get('dragon_darwin:microphone-off'),
#   action: ->
#     console.log('got this?')
#     @positionMouse(100, 100, 1) # index?
#     @positionMouse(0, 0, 1) # index?
#     @delay(50)
#     # in case monitor 2 is hooked up
#     @positionMouse(100, 100, 2) # index?
#     @positionMouse(0, 0, 2) # index?
#     @microphoneOff()
#     @
