# Sequoia Shortcuts Setup

## Quick Setup for macOS Sequoia 15.6+

Since AppleScript permissions are restricted in Sequoia, use this Shortcuts-based approach:

### 1. Create the Shortcut

**Actions to add in order:**

1. **Ask for Input**
   - Input Type: Text  
   - Prompt: "Captain's Log Entry:"
   - Allow Multiple Lines: ON

2. **Get Current Date**

3. **Format Date**
   - Format: Custom
   - Custom Format: `yyyy-MM-dd-HH:mm`

4. **Text** (combine the timestamp and entry)
   ```
   ## [Formatted Date] - Voice Note
   [Ask for Input]
   
   ```

5. **Append to Text File**
   - File: `Documents/Obsidian/Daily Logs/[Formatted Date] Captain's Log.md`
   - Text: [Text from step 4]
   - Make New File: If Needed

### 2. Name and Save
- Name: "Captain's Log"
- Save the shortcut

### 3. Set Up Voice Control
1. **System Settings** → **Accessibility** → **Voice Control**
2. **Commands** → **+** (Add new)
3. **Phrase**: "Captain's log"
4. **Action**: Run Shortcut
5. **Shortcut**: Select "Captain's Log"

### 4. Test
Say "Captain's log" and verify:
- Input dialog appears
- You can dictate your entry
- File is created in Obsidian Daily Logs folder

## File Output Example

Creates files like: `2025-08-05-14:32 Captain's Log.md`

With content:
```markdown
## 2025-08-05-14:32 - Voice Note
Testing the new Sequoia-compatible captain's log system using Shortcuts.
```

## Permissions Needed

If file writing fails, grant Shortcuts access:
- **System Settings** → **Privacy & Security** → **Files and Folders**
- Enable Shortcuts access to your Documents folder
