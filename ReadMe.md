# ⚙️ Start on Logon Task Installer

A simple `.bat` script that creates a Windows Task Scheduler task to automatically launch a specified application **with highest privileges** at system logon — no UAC prompt, no manual clicks.

Originally built for **Stream Dock Ajazz**, which triggers a **SystemMonitor.exe UAC popup** every time Windows starts. This script eliminates that annoyance by scheduling the app to run silently with admin rights.

---

## 📥 How to Use

1. **Run** `StartOnLogonInstaller.bat` as Administrator  
   _(Right-click → “Run as administrator”)_
2. **Enter** the full path to your `.exe` file  
   _(e.g., `D:\Ajazz\Stream Dock AJAZZ.exe`)_
3. **Enter** the task name  
   _(e.g., `AjazzStartOnLogon`)_
4. ✅ Done!

If everything is correct, you’ll see a confirmation message.  
If something goes wrong, the script will explain the problem.

---

## 💡 Tip

You can use this script for **any other app** that needs to start with elevated rights at logon — not just Stream Dock Ajazz. Just specify a different `.exe` path.

---

## 🗑 How to Delete the Task

1. Press `Win + R`, type `taskschd.msc`, and press Enter.
2. In the left panel, click **Task Scheduler Library**.
3. Find your task (default name: `AjazzStartOnLogon`) in the middle list.
4. Right-click the task → **Delete**.

---

## 🧪 Tested On

- ✅ Windows 10
- ✅ Windows 11
- ⚠️ Requires Administrator rights to install the task

---

## 📄 License

MIT — free to use, modify, and distribute.
