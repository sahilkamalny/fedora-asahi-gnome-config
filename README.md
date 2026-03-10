# Fedora Asahi GNOME Config

![Desktop Preview](assets/desktop-preview.png)

A reproducible macOS-style GNOME desktop configuration for **Fedora Asahi Linux**.

This repository stores the configuration, themes, scripts, and GNOME settings required to recreate my desktop environment.

The goal is to make the desktop:

- reproducible
- version controlled
- portable across installations
- easy to restore on a fresh system

---

# Features

• WhiteSur macOS-style theme  
• Blur-My-Shell glass effect  
• Dash-to-Dock layout  
• custom GNOME shell styling  
• GTK configuration  
• GNOME extension configuration  
• automatic backup scripts  
• Git-based configuration tracking  

---

# One-Command Install

You can install the entire configuration with:

bash <(curl -fsSL https://raw.githubusercontent.com/sahilkamalny/fedora-asahi-gnome-config/main/install.sh)

After installation **log out and back in** for all settings to apply.

---

# Manual Installation

Clone the repository:

git clone https://github.com/sahilkamalny/fedora-asahi-gnome-config.git
cd fedora-asahi-gnome-config

Run the setup script:

./setup.sh

Then log out and back in.

---

# Repository Structure

fedora-asahi-gnome-config
├── assets
│   └── desktop-preview.png
├── bin
│   ├── backup-gnome
│   ├── restore-gnome
│   └── sync-gnome-config
├── config
│   ├── gtk-3.0
│   └── gtk-4.0
├── dconf
│   ├── org-gnome.ini
│   ├── org-gtk.ini
│   └── gnome-shell-extensions.ini
├── themes
│   └── WhiteSur-Dark
├── gnome-extensions.txt
├── install.sh
├── setup.sh
├── README.md
└── .gitignore

---

# Updating the Configuration

After modifying your GNOME desktop configuration, run:

sync-gnome-config

This will:

1. export GNOME settings
2. update GTK configuration
3. copy theme modifications
4. update extension list
5. commit changes
6. push updates to GitHub

---

# Local Backup System

Create a local snapshot of your configuration:

backup-gnome

Restore from a snapshot:

restore-gnome <backup-file>

These backups are useful before experimenting with theme or extension changes.

---

# Notes

Some GNOME settings cannot be restored if they are locked by system policies.
These do **not affect the visual configuration** of the desktop.

This configuration is designed specifically for:

- Fedora Asahi Linux
- GNOME desktop environment

---

# License

Personal configuration repository.
Use freely for inspiration or adaptation.
