# Fedora Asahi GNOME Config

A reproducible macOS-style GNOME desktop configuration for **Fedora Asahi Linux**.

This repository stores the configuration, themes, scripts, and GNOME settings required to recreate my desktop environment.

The goal is to make the system:

- reproducible
- version-controlled
- portable across installations

![Desktop Preview](assets/desktop-preview.png)

## Features

- WhiteSur macOS-style theme
- Blur My Shell configuration
- Dash to Dock layout
- custom GNOME Shell styling
- GTK configuration
- automated configuration backup
- Git-based version tracking

## One Command Install

You can install the entire configuration with one command:

```bash
curl -fsSL https://raw.githubusercontent.com/sahilkamalny/fedora-asahi-gnome-config/main/install.sh | bash
```

After installation, log out and back in.

## Manual Installation

Clone the repository:

```bash
git clone https://github.com/sahilkamalny/fedora-asahi-gnome-config.git
cd fedora-asahi-gnome-config
```

Run the restore script:

```bash
./restore-from-repo.sh
```

Then log out and back in.

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
├── restore-from-repo.sh
├── README.md
└── .gitignore
```

## Updating the Configuration

After modifying your desktop configuration, run:

```bash
sync-gnome-config
```

This command:

1. exports GNOME settings
2. updates GTK configuration
3. copies theme modifications
4. updates the extension list
5. commits changes
6. pushes to GitHub

## Local Backups

Create a rollback snapshot:

```bash
backup-gnome
```

Restore from backup:

```bash
restore-gnome <backup-file>
```

## Notes

Some GNOME settings cannot be restored if they are locked by system policies. These do not affect the main visual configuration.

This configuration is designed specifically for:

- Fedora Asahi Linux
- GNOME desktop environment

## License

Personal configuration repository. Use freely for inspiration or adaptation.
