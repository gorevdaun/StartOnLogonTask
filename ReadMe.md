# ⚙️ Start on logon task installer

A simple `.bat` script that creates a Windows Task Scheduler task to automatically launch a specified application **with highest privileges** at system logon.

Originally created to launch **Stream Dock Ajazz**, which triggers a **SystemMonitor.exe UAC popup** on every startup — this script helps bypass that prompt by scheduling the app to run with elevated rights silently.


## 📌 How to Use

1. Open the script using **Notepad** or any text editor.
2. Find the line:

```
set "APP_PATH="
```
and set the full path to your "Stream Dock AJAZZ.exe" or another program. For example:
```
set "APP_PATH=D:\Ajazz\Stream Dock AJAZZ.exe"
```
3. Save the file.
4. Run StartOnLogonInstaller.bat as Administrator (right-click → “Run as administrator”).

Also you can replace "AjazzStartOnLogon" with any name you want for the task.

✅ If everything is correct, you’ll see a confirmation message.

❌ If something goes wrong, the script will explain what the problem is.

## 💡 Tip

This script can be reused for any other application that you want to start with admin rights at user logon — just change the APP_PATH.

## Deletion

1. Press Win + R, type taskschd.msc and press Enter.
2. In the left panel, click Task Scheduler Library.
3. Find your task (AjazzStartOnLogon by default) in the middle list.
4. Right-click the task and choose Delete.
