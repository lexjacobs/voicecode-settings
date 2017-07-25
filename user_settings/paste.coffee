Events.on 'shouldStringBePasted', (shouldPaste) ->
  if Scope.active('atom')
    shouldPaste.yesNo = no
    shouldPaste.continue = no
  shouldPaste
