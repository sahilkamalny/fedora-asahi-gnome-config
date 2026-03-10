<h1 align="center">Fedora Asahi GNOME Config</h1>

<p align="center">
  <img src="assets/desktop-preview.png" alt="Desktop Preview"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Fedora-Asahi-blue?logo=fedora" />
  <img src="https://img.shields.io/badge/Desktop-GNOME-blue?logo=gnome" />
  <img src="https://img.shields.io/badge/Platform-Linux-black?logo=linux" />
</p>

<p align="center">
A reproducible <b>macOS-style GNOME desktop configuration</b> for Fedora Asahi Linux.
</p>

<hr>

This repository stores the configuration, themes, scripts, and GNOME settings required to recreate my desktop environment.

The goal is to make the desktop:

- reproducible
- version controlled
- portable across installations
- easy to restore on a fresh system

---

## Contents

- [Features](#features)
- [One-Command Install](#onecommand-install)
- [Manual Installation](#manual-installation)
- [Repository Structure](#repository-structure)
- [Updating the Configuration](#updating-the-configuration)
- [Local Backup System](#local-backup-system)
- [Notes](#notes)
- [License](#license)

---

## Features

• WhiteSur macOS-style theme  
• Blur My Shell glass effect  
• Dash to Dock layout  
• Custom GNOME Shell styling  
• GTK configuration  
• GNOME extension configuration  
• Automatic backup scripts  
• Git-based configuration tracking  

---

## One‑Command Install

Install the full configuration with:

bash <(curl -fsSL https://raw.githubusercontent.com/sahilkamalny/fedora-asahi-gnome-config/main/install.sh)

After installation **log out and back in** for all changes to apply.

---

## Manual Installation

Clone the repository:

git clone https://github.com/sahilkamalny/fedora-asahi-gnome-config.git
cd fedora-asahi-gnome-config

Run the setup script:

./setup.sh

Then log out and back in.

---

## Repository Structure

```
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
```

## Updating the Configuration

After modifying your GNOME desktop configuration, run:

sync-gnome-config

This command:

1. exports GNOME settings
2. updates GTK configuration
3. copies theme modifications
4. updates extension list
5. commits changes
6. pushes updates to GitHub

---

## Local Backup System

Create a local snapshot of your configuration:

backup-gnome

Restore from a snapshot:

restore-gnome <backup-file>

Backups are useful before experimenting with theme or extension changes.

---

## Notes

Some GNOME settings cannot be restored if they are locked by system policies.
These do **not affect the visual configuration** of the desktop.

Designed for:

• Fedora Asahi Linux  
• GNOME Desktop  

---

## License

Personal configuration repository.  
Use freely for inspiration or adaptation.
