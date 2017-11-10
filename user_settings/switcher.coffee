pack = Packages.register
  name: "switcher"
  description: "alternate application switcher for VoiceCode"

pack.commands
  "switch-app":
    spoken: "fox"
    description: "switch current application"
    continuous: false
    enabled: true
    grammarType: "textCapture"
    action: (input) ->
      switchTo = input.join(' ').toLowerCase()
      ws = $.NSWorkspace('sharedWorkspace')
      len = ws('runningApplications')('count')
      for i in [0...len - 1] by 1
        name = ws('runningApplications')('objectAtIndex', i)('localizedName').toString()
        if name.toLowerCase().includes(switchTo)
          @applescript "tell application \"#{name}\" to activate"
          break
