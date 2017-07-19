#Action:{"name":"Open directory in iTerm window","appleScriptHandler":"open_directory_new_window","requiresDirectory":1}

on open_directory_new_window(dir)
	set p to (dir as text)
	tell application "iTerm"
		set newWindow to (create window with default profile)
		tell newWindow to set mySession to current session
		tell mySession to write text "cd " & quoted form of p
	end tell
end open_directory_new_window
