pack = Packages.register
  name: 'virtualBox'
  description: 'Commands for virtual box'
  applications: ['org.virtualbox.app.VirtualBoxVM']

pack.implement
  'clipboard:copy': ->
    @key 'c', 'control'
  'clipboard:paste': ->
    @key 'v', 'control'
