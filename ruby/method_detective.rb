# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".sub('o', 'oo')
"zom".gsub('o', 'oo')
"zom".replace('zoom')
# => “zoom”

"enhance".center(15)
"enhance".ljust(11).rjust(15)
"enhance".rjust(11).ljust(15)
"enhance".insert(7, "    ").insert(0, "    ")
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".ljust(18, ' suspects')
"the usual".sub('l', 'l suspects')
"the usual".gsub('l', 'l suspects')
"the usual".insert(9, " suspects")
"the usual".concat(' suspects')
#=> "the usual suspects"

" suspects".rjust(18, 'the usual')
" suspects".sub(' ', 'the usual ')
" suspects".gsub(' ', 'the usual ')
" suspects".insert(0, 'the usual ')
" suspects".prepend('the usual')

# => "the usual suspects"

"The case of the disappearing last letter".sub('letter', 'lette')
"The case of the disappearing last letter".gsub('letter', 'lette')
"The case of the disappearing last letter"[0, 39]
"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter".chop
"The case of the disappearing last letter".slice(0, 39)
"The case of the disappearing last letter".byteslice(0, 39)
# => "The case of the disappearing last lette"


"The mystery of the missing first letter".sub('The', 'he')
"The mystery of the missing first letter".gsub('The', 'he')
"The mystery of the missing first letter"[1, 40]
"The mystery of the missing first letter".slice(1, 40)
"The mystery of the missing first letter".byteslice(1, 40)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?) This is the Integer ordinal for "z"

"How many times does the letter 'a' appear in this string?".count "a"
# => 4