# restic - Backup done right

## Usage
Tom Mob, [15.05.20 14:33]

### backup: 

cd /D <medium>

### backup:
```sh
bin/restic backup -r /media/tom/codem_backup/backup/source/go/learning  /home/tom/projects/go/src/learning --verbose
```

### mount:
```sh
bin/restic        -r                         backup/source/go/learning/ mount mount/learning
```

### restore:
habe kein script, mache ich von hand.
Sieht aus wie `backup` befehl, nur statt backup -> restore ??

----

[Mount unter Win7](https://forum.restic.net/t/restic-mount-windows/898)
Schaut nicht so aus als wär das gelöst :-(

### StumbledUpon:
[WinFsp - Windows File System Proxy](http://www.secfs.net/winfsp/ - short & sweet)
WinFsp is system software that provides runtime and development support for custom file systems on Windows computers. In this sense it is similar to FUSE (Filesystem in Userspace), which provides the same functionality on UNIX-like computers.

Typically any information or storage may be organized and presented as a file system via WinFsp, with the benefit being that the information can be accessed via the standand Windows file API’s by any Windows application.
