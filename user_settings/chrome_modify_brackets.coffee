chrome = Packages.get 'chrome'

chrome.implement
 'symbols:surround-single-quotes': ->
   @string "''"
   @left()
 'symbols:surround-double-quotes': ->
   @string '""'
   @left()
 'symbols:surround-parentheses': ->
   @string '()'
   @left()
 'symbols:brackets': ->
   @string '[]'
   @left()
 'symbols:surround-braces': ->
   @string '{}'
   @left()
 'symbols:surround-backticks': ->
   @string '``'
   @left()
