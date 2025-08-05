-- Captain's Log Voice Control Script
-- Get the voice note
set userText to text returned of (display dialog "Captain's Log Entry:" default answer "" with title "Voice Note")

if userText is not "" then
    -- Get current date and time
    set currentDate to current date
    set dateString to (year of currentDate as string) & "-" & ¬
        text -2 thru -1 of ("0" & (month of currentDate as integer as string)) & "-" & ¬
        text -2 thru -1 of ("0" & (day of currentDate as string))
    
    set timeString to text -2 thru -1 of ("0" & (hours of currentDate as string)) & ":" & ¬
        text -2 thru -1 of ("0" & (minutes of currentDate as string))
    
    -- Create the log entry
    set logEntry to (return & "## " & timeString & " - Voice Note" & return & userText & return)
    
    -- Set the file path to the correct Obsidian vault location
    set logFile to (path to home folder as string) & "Documents:Obsidian:Daily Logs:" & dateString & " Captain's Log.md"
    
    -- Append to file (create if doesn't exist)
    try
        set fileRef to open for access file logFile with write permission
        write logEntry to fileRef starting at eof
        close access fileRef
    on error
        try
            close access file logFile
        end try
        -- File doesn't exist, create it
        set fileRef to open for access file logFile with write permission
        write logEntry to fileRef
        close access fileRef
    end try
end if
