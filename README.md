# Popup-Evade

A fun, simple project that demonstrates how to create a graphical popup window using PowerShell. When you run the script, a "Yes/No" dialog appears. If you try to move your mouse to click "No," the window will jump to a random new position on the screen, creating a fun little challenge.

![Demo Gif (Optional - you can record a small gif of it working!)](link_to_your_gif_here.gif)

### Features

*   A GUI window created entirely with PowerShell.
*   The "No" button playfully evades the mouse cursor.
*   Launches silently in the background with no console window.
*   Fully portable! Runs on any modern Windows computer without needing admin rights or changing system settings.

### How to Use

1.  Download the repository as a ZIP file or clone it.
2.  Make sure both `start_popup.bat` and `moving_popup.ps1` are in the same folder.
3.  Double-click `start_popup.bat` to run the program.

### Purpose

This was a small project to learn about:
*   Creating GUIs with PowerShell (`System.Windows.Forms`).
*   Handling user input and events (button clicks, mouse hovers).
*   Making PowerShell scripts portable and user-friendly by using a batch file launcher with the `-ExecutionPolicy Bypass` flag.

---

Good luck with your GitHub repository! It's a great first project to share.
