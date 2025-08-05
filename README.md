# Captain's Log Voice Control

A voice-controlled captain's log system for Obsidian using macOS Voice Control and Shortcuts. Record your daily work, thoughts, and discoveries by simply speaking to your Mac.

## 🎯 What This Does

This tool allows you to:
- Say "Captain's log" to activate voice recording
- Dictate your entry using Voice Control 
- Automatically format and save timestamped entries to Obsidian
- Keep a persistent record of your work sessions without interrupting your workflow

## 🚀 Setup for macOS Sequoia (15.6+)

### Method 1: Pure Shortcuts (Recommended)

**Create Shortcut with these actions:**

1. **Ask for Input**
   - Input Type: Text
   - Prompt: "Captain's Log Entry:"

2. **Get Current Date**

3. **Format Date** 
   - Format: Custom
   - Custom Format: `yyyy-MM-dd-HH:mm`

4. **Text** action:
   ```
   ## [Formatted Date] - Voice Note
   [Ask for Input result]
   
   ```

5. **Append to Text File**
   - File path: `~/Documents/Obsidian/Daily Logs/[Formatted Date] Captain's Log.md`
   - Text: [Text from step 4]
   - Make New File: If Needed

**Set up Voice Control:**
1. **System Settings** → **Accessibility** → **Voice Control** → **Commands**
2. Add new command: "Captain's log" → Run Shortcut → [Your shortcut name]

### Method 2: AppleScript (For older macOS versions)

For macOS versions before Sequoia, use the AppleScript in `scripts/captains_log.applescript`.

## 📝 File Format

Entries are saved as timestamped files:
```
Daily Logs/
├── 2025-08-05-14:32 Captain's Log.md
├── 2025-08-05-15:45 Captain's Log.md
└── ...
```

Each entry includes:
```markdown
## 2025-08-05-14:32 - Voice Note
Working on captain's log implementation. Sequoia requires Shortcuts instead of direct AppleScript.
```

## 🔧 Troubleshooting

### Sequoia-Specific Issues
- **No dialog appears**: Use Shortcuts method instead of AppleScript
- **File permissions**: Grant Shortcuts access to Files & Folders in Privacy settings
- **Voice Control not responding**: Ensure the shortcut name matches the voice command exactly

### General Issues
- **Files not saving**: Check that Daily Logs folder exists in Obsidian vault
- **Voice Control**: Try "Show commands" to verify your command is listed

## 🎨 Usage Examples

### Daily Work Log
> "Captain's log: Completed the authentication module and fixed three bugs in the user interface."

### Project Status  
> "Captain's log: Discovered Voice Control permissions changed in Sequoia. Switched to pure Shortcuts approach."

### Decision Records
> "Captain's log: Decided to use timestamp in filename for better organization in Sequoia."

## 📱 macOS Version Compatibility

- **macOS Sequoia 15.6+**: Use Shortcuts method (recommended)
- **macOS Monterey/Ventura**: Either method works
- **Older versions**: AppleScript method only

## 🤝 Contributing

1. Fork the repository
2. Test on your macOS version
3. Submit improvements for different OS versions
4. Update documentation

## 📄 License

MIT License - feel free to use and modify as needed.

---

**Happy logging!** 🚀 This tool solves the "what did I work on today?" problem by making it effortless to capture your thoughts and progress as you work.
