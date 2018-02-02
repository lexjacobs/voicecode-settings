pack = Packages.register
  name: 'visual-studio'
  description: 'Commands for microsoft visual studio'
  applications: ['com.microsoft.VSCode']

pack.commands
  'run-code':
    spoken: 'execute'
    description: 'use the built in plug-in to execute code'
    enabled: true
    continuous: false
    action: -> @key 'n', 'control option'
