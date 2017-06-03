gmail = Packages.get 'gmail'
gmail.commands
  'newer-conversation':
    enabled: true
    spoken: 'super new'
    description: 'select newer conversation'
    continuous: true
    action: -> @string 'k'
  'older-conversation':
    enabled: true
    spoken: 'super old'
    description: 'select older conversation'
    continuous: true
    action: -> @string 'j'
  'deselect-all':
    enabled: true
    spoken: 'super none'
    misspellings: ['super d select']
    description: 'deselect all conversations'
    continuous: true
    action: -> @string '*n'
  'select-all-conversations':
    enabled: true
    spoken: 'super all'
    description: 'select all gmail conversations'
    continuous: true
    action: -> @string '*a'
  'select-all-unread':
    enabled: true
    spoken: 'super unread'
    description: 'select all unread gmail conversations'
    continuous: true
    action: -> @string '*u'
