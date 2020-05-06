# borg external harddrive dmenu

This is a script which use dmenu to perform backups with an external harddrive, you can use it with the tiny i3blocks script I provide here.

I use Hack font for dmenu, so if you don't have it, simply change it.
I also use dunst as notify manager.
You have to export SUDO_ASKPASS="path/to/dmenupass" (in your .profile for example) to have sudo -A working

You would also have to change "path to autobackup.sh" to the real path where you put this script.

## i3blocks optionnal dependency

For everything to work, ellipsize have to be in your $PATH and borg in the path you defined in ~/.config/i3blocks/config.

Then, simply add :
```
[borg]
interval=5
```
to ~/.config/i3blocks/config.
