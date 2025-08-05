# Captain's Log Voice Control

A voice-controlled captain's log system for Obsidian using macOS Voice Control and AppleScript. Record your daily work, thoughts, and discoveries by simply speaking to your Mac.

## 🎯 What This Does

This tool allows you to:
- Say "Captain's log" to activate voice recording
- Dictate your entry using Voice Control 
- Automatically format and save timestamped entries to Obsidian
- Keep a persistent record of your work sessions without interrupting your workflow

## 🚀 Quick Setup

### Step 1: Clone This Repository
```bash
git clone https://github.com/your-username/captains-log-voice.git
cd captains-log-voice
```

### Step 2: Update the Script Path
Edit `scripts/captains_log.applescript` and update this line to match your Obsidian vault location:
```applescript
set logFile to (path to home folder as string) & "Documents:Obsidian:Daily Logs:" & dateString & " Captain's Log.md"
```

### Step 3: Create Daily Logs Folder
In your Obsidian vault, create a folder called `Daily Logs`

### Step 4: Set Up Voice Control
1. **Enable Voice Control**: System Preferences → Accessibility → Voice Control → On
2. **Add Custom Command**:
   - Click **Commands...**
   - Click the **+** button
   - **Phrase**: `Captain's log`
   - **Action**: Choose "Run AppleScript"
   - **Script**: Copy and paste the entire content from `scripts/captains_log.applescript`
   - Click **Done**

### Step 5: Test It!
1. Say **"Captain's log"**
2. A dialog should appear
3. Dictate your message with Voice Control
4. Click **OK**
5. Check `Daily Logs/` in your Obsidian vault for the new entry

## 📝 How It Works

### Voice Command Flow
```
"Captain's log" → Dialog Opens → Voice Control Dictates → Entry Saved
```

### File Structure
Daily logs are saved as:
```
Daily Logs/
├── 2025-08-04 Captain's Log.md
├── 2025-08-05 Captain's Log.md
└── ...
```

### Entry Format
Each entry includes:
```markdown
## 14:32 - Voice Note
Working on protocol updates with Claude. Just discovered we need session tracking.
```

## 🛠️ Customization

### Change the Trigger Phrase
Edit the Voice Control command to use any phrase you prefer:
- "Make a note"
- "Log entry" 
- "Record this"

### Modify Entry Format
Edit the AppleScript to change how entries are formatted:
```applescript
set logEntry to (return & "## " & timeString & " - Voice Note" & return & userText & return)
```

### Different File Location
Update the `logFile` path in the script to save to any location:
```applescript
set logFile to (path to home folder as string) & "Your:Custom:Path:" & dateString & " Log.md"
```

## 🔧 Troubleshooting

### Voice Control Not Working
- Ensure Voice Control is enabled in Accessibility settings
- Check that the custom command phrase is exactly what you're saying
- Try "Show commands" in Voice Control to see available commands

### Files Not Saving
- Verify the Obsidian vault path in the script
- Check that the Daily Logs folder exists
- Ensure file permissions allow writing

### Dialog Not Appearing
- Test the script manually: `osascript scripts/captains_log.applescript`
- Check that AppleScript permissions are granted

## 🎨 Usage Examples

### Daily Work Log
> "Captain's log: Completed the authentication module and fixed three bugs in the user interface. Next up is testing the API endpoints."

### Project Status
> "Captain's log: Made significant progress on the database migration. Encountered an issue with foreign key constraints but found a workaround."

### Decision Records
> "Captain's log: Decided to switch from REST to GraphQL for the new API. The flexibility for mobile clients was the deciding factor."

## 🔮 Future Enhancements

- **Tag Support**: Auto-tag entries with project names
- **Template Variations**: Different formats for different types of entries
- **Search Integration**: Quick search across all log entries
- **Export Features**: Convert logs to different formats
- **Audio Preservation**: Optional audio file storage alongside text

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

MIT License - feel free to use and modify as needed.

## 🆘 Support

If you run into issues:
1. Check the troubleshooting section above
2. [Open an issue](https://github.com/your-username/captains-log-voice/issues) on GitHub
3. Include your macOS version and Obsidian setup details

---

**Happy logging!** 🚀 This tool solves the "what did I work on today?" problem by making it effortless to capture your thoughts and progress as you work.
