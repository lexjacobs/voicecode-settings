###
move windows according to the following signature: (<window number (optional)> <x-start> <x-end> <y-start> <y-end>). Screen is divided into x/y grid addressable between 0 and 8 on both axes.

(doesn't interfere with 🔉windy🔉 'window:layout')

example usage:
🔉super window 0808🔉 => fill entire window (window 1, or system associated window, implicit)
🔉super window 10808🔉 => fill entire window (window 1 explicit)
🔉super window 20808🔉 => fill entire window (window 2 explicit)
🔉super window 0404🔉 => fill top left corner (window 1, or system associated window, implicit)
🔉super window 10404🔉 => fill top left corner (window 1 explicit)
🔉super window 20404🔉 => fill top left corner (window 2 explicit)
🔉super window 4808🔉 => fill right half (window 1, or system associated window, implicit)
🔉super window 14808🔉 => fill right half (window 1 explicit)
🔉super window 24808🔉 => fill right half (window 2 explicit)
🔉super window 0848🔉 => fill bottom half (window 1, or system associated window, implicit)
🔉super window 10848🔉 => fill bottom half (window 1 explicit)
🔉super window 20848🔉 => fill bottom half (window 2 explicit)
###

pack = Packages.register
  name: "window-mover"
  description: "gridded window mover"

pack.commands
  'window-layout-updated':
    spoken: 'super window'
    description: "move windows according to the following signature: (<window number (optional)> <x-start> <x-end> <y-start> <y-end>). Screen is divided into x/y grid addressable between 0 and 8 on both axes"
    continuous: false
    enabled: true
    grammarType: "integerCapture"
    action: (input) ->
      return unless input.length
      input = input.split('')
      screenInfo = @getScreenInfo()

      screen = if input.length is 5
          screenInfo.screens[+input[0] - 1] or screenInfo.currentFrame
        else
          screenInfo.currentFrame

      # screen designator no longer needed
      input = if input.length is 5
          input.slice(1)
        else
          input

      # 0 => 0%; 8 => 100%
      input = input.map((x) -> Math.min(100, +x * 12.5))
      preset = {}
      preset.width = .01 * (input[1] - input[0])
      preset.height = .01 * (input[3] - input[2])
      preset.x = .01 * input[0]
      preset.y = .01 * input[2]
      # console.log 'preset', preset

      newWidth = if preset.width <= 1
        screen.size.width * preset.width
      else
        preset.width

      newHeight = if preset.height <= 1
        screen.size.height * preset.height
      else
        preset.height

      offsetX = if preset.x is 'auto'
        (screen.size.width - newWidth) / 2
      else if preset.x <= 1
        screen.size.width * preset.x
      else
        preset.x

      offsetY = if preset.y is 'auto'
        (screen.size.height - newHeight) / 2
      else if preset.y <= 1
        screen.size.height * preset.y
      else
        preset.y

      newOriginX = screen.origin.x + offsetX
      newOriginY = screen.origin.y + offsetY + 27

      # window switching settings signature
      # Settings.window = windowPositions:
      # "top left":
      #   x: 0
      #   y: 0
      #   width: 0.5
      #   height: 0.5

      script = """
           tell application "System Events" to tell (process 1 whose frontmost is true)
             set position of window 1 to {#{newOriginX}, #{newOriginY}}
             delay 0.1
             set size of window 1 to {#{newWidth}, #{newHeight}}
             delay 0.1
             set position of window 1 to {#{newOriginX}, #{newOriginY}}
             delay 0.1
             set size of window 1 to {#{newWidth}, #{newHeight}}
             delay 0.1
             set position of window 1 to {#{newOriginX}, #{newOriginY}}
             delay 0.1
             set size of window 1 to {#{newWidth}, #{newHeight}}
           end tell
           """
      # console.log script
      @applescript(script, false)
