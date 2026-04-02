# Word and Character Count service for Mac OS X
#
# Adds a Word and Character Count option to the text selection context menu in all apps
#
# Use Automator.app to create a new service, and then select the Run AppleScript action.
# Paste this code in to the text box, and save as Word and Character Count. Now switch to
# a new app, select some text, and open the context menu to find the new option.

on run {input, parameters}
	tell application "System Events"
		set _appname to name of first process whose frontmost is true
	end tell
	set word_count to count words of (input as string)
	set character_count to count characters of (input as string)
	tell application _appname
		display alert "" & word_count & " words, " & character_count & " characters"
	end tell
	return input
end run