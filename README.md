# Lazarus IDE Editor Macros

Miscellaneous Lazarus IDE Editor Macros

| Macro | Description |
|------------------|------------|
| [apostrophe.pas](/apostrophe.pas) | appends the closing apostrophe and places the cursor between the two apostrophes.|
| [parentheses.pas](/parentheses.pas)   | appends the closing parentheses and places the cursor between the two parentheses.|
| [breakline_string.pas](/breakline_string.pas) |  simplifies the process of breaking an existing string into two lines |
| [backspace.pas](/backspace.pas) |  improved backspace, to handle apostrophes and parentheses |

### Usage
<details>
  <summary>Activate Editor Macros</summary>
  
Lazarus IDE > Package > Install/Unistall Packages...    
In 'Available for Installation' list choose these packages
 1. pascalscript
 1. EditorMacroScript
 1. Save and rebuild IDE
</details>
<details>
  <summary>Adding Macros</summary>
  
Lazarus IDE > View > Editor Macros 
 1. Click in 'Record', press one key and stop macro.
 1. Move the recorded macro to IDE or Project.
 1. Click in 'Edit', replace the code of macro script for the content of .pas file in repository and save.
 1. Click 'Edit Key' to choose the shortcut.
</details>

Contributions are welcome, submit a pull request :)
