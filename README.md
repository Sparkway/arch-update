# Arch-Update

A (.desktop) clickeable icon that automatically changes to act as a pacman update notifier/applier


## Table of contents
* [Description](#description)
* [Installation](#installation)
* [Dependencies](#dependencies)
* [Usage](#usage)
* [Documentation](#documentation)
* [Tips and tricks](#tips-and-tricks)


## Description

A (.desktop) clickeable icon that automatically changes to act as a pacman update notifier/applier, easy to integrate with any DE/WM, docks, launchbars or app menus. 
<br>
Optionnal support for the AUR (through **yay**) and desktop notifications. 


## Installation

### AUR

Install the [arch-update](https://aur.archlinux.org/packages/arch-update "arch-update AUR package") AUR package

### Manual installation

Download the latest [release](https://github.com/Antiz96/arch-update/releases "latest release") ".tar.gz" archive and put it in "/tmp"
<br>
Then type the following commands (*the commands preceded with a "#" need to be launched with root privileges. Use sudo for instance*) :
<br>
```
$ cd /tmp
$ mkdir arch-update
$ tar -xvf arch-update-X.X.X.tar.gz -C arch-update #Replace "X.X.X" by the release's version
$ chmod +x arch-update/bin/arch-update.sh
# cp arch-update/bin/arch-update.sh /usr/local/bin/arch-update
# cp -r arch-update/icons/ /usr/share/icons/arch-update
# chmod 666 /usr/share/icons/arch-update/*
# cp arch-update/desktop/arch-update.desktop /usr/share/applications/
# mkdir -p /usr/local/share/man/man1
# cp arch-update/man/arch-update.1.gz /usr/local/share/man/man1/
# cp arch-update/systemd/* /etc/systemd/user/
# rm -rf arch-update arch-update-X.X.X.tar.gz #Replace "X.X.X" by the release's version
```
**Be aware that the manual installation will not provide any automatic update or uninstall process. You'll need to redo all the above steps each time there's a new release in order to get the latest version.**
<br>
**With that said, unless you have specific reasons to perform a manual installation, I'd recommend using the AUR package installation method.**


## Dependencies

### Required dependencies

Arch-Update depends on the [pacman-contrib](https://archlinux.org/packages/community/x86_64/pacman-contrib/ "pacman-contrib package") package

### Optionnal dependencies

Arch-Update optionnaly depends on the [yay](https://aur.archlinux.org/packages/yay "yay package") package to check and apply AUR's packages updates
<br>
<br>
Arch-Update optionnaly depends on the [libnotify](https://archlinux.org/packages/extra/x86_64/libnotify/ "libnotify package") package (notify-send) to send desktop notifications when checking for available updates
<br>
*In order to get "libnotify" (and thus "notify-send") you have to install a notification server (if you don't already have one)*
<br>
*See https://wiki.archlinux.org/title/Desktop_notifications#Notification_servers*


## Usage

The usage consist of integrating the **(.desktop) icon** anywhere (could be your desktop, your dock, your launchbar and/or your app menu) and enabling the **systemd timer**.

### Wiki Usage Page

Refer to the [Wiki Usage Page](https://github.com/Antiz96/arch-update/wiki/Usage "Wiki Usage Page") and to the screenshots below for more information.

### Screenshot

Personally, I integrated the (.desktop) icon on my dock
<br>
<br>
It is the penultimate icon from left to right (next to the red "Power Sign" icon)
<br>
This is how it looks like when **arch-update** is checking for available updates :
![Arch-Update_Check](https://user-images.githubusercontent.com/53110319/161241670-8cab8a54-199b-41f1-80e3-95b171bbb70f.png)
<br>
If there are available updates, the icon will change and a desktop notification indicating the number of available updates will be sent (_requires **libnotify/notify-send**_) :
![Arch-Update_Updates_Available+Notif](https://user-images.githubusercontent.com/53110319/161244079-b2ce8f2f-d4d3-42ad-83c1-62161d6da62f.png)
<br>
When the icon is clicked, it refreshes the package list available for updates and print it inside a terminal window. Then it asks for the user's confirmation to proceed (*requires **yay** for AUR packages support*) :
![Arch-Update_List_Packages](https://user-images.githubusercontent.com/53110319/161244601-8ddeb5c4-b6cd-47a7-a035-debdbad75936.png)
<br>
If you chose to also display the version changes (refer to the *Tips and tricks* section below), this is how it looks like :
![Arch-Update_List_Packages_With_Version_Changes](https://user-images.githubusercontent.com/53110319/161244783-bb0de764-04bb-4c39-b17a-54dcfb9de449.png)
<br>
Once the user gave the confirmation to proceed, the update process will begin and the icon will change accordingly :
![Arch-Update_Installing](https://user-images.githubusercontent.com/53110319/161245498-35bb8f9d-c050-40f5-ae67-d7a01b0bae19.png)
<br>
Finally, when the computer is up to date, the icon will look like this :
![Arch-Update_up_to_date](https://user-images.githubusercontent.com/53110319/161245726-b3adff52-f91e-40b6-9acc-a7f0d35fa7a5.png)


## Documentation

Refer to the [Wiki Documentation Page](https://github.com/Antiz96/arch-update/wiki/Documentation "Wiki Documentation Page")


## Tips and tricks

Refer to the [Wiki Tips and tricks Page](https://github.com/Antiz96/arch-update/wiki/Tips-and-tricks "Wiki Tricks and tips Page")

