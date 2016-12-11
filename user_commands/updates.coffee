darwin = Packages.get 'darwin'
darwin.implement
  'system:open-launcher': ->
    @key ' ', 'option'
    @delay 100
    @

# adding behavior for iTerm2, to repeat previous entry
obj = Packages.get 'object'
obj.implement
  'object:refresh': ->
    switch @currentApplication().name
        when 'Safari', 'Google Chrome', 'Firefox'
            @key 'R', 'command'
        when 'Atom'
            @key 'L', 'control option command'
        when 'iTerm2', 'Terminal'
            @key 'c', 'control'
            @delay(100)
            @string '!!'
            @enter()
