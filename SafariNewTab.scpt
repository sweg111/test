(* 
  Open a new tab in Safari (and move focus to the URL bar)
  I have this configured as a Quicksilver trigger for ctrl+alt+T
 *)

tell application "Safari" to activate
tell application "System Events"
	tell process "Safari"
		click menu item "New Tab" of menu "File" of menu bar 1
	end tell
end tell
