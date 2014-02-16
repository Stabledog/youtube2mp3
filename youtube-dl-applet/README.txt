# Original code from http://opendesktop.org/content/show.php?content=162896
#
This tool is convenient link handler, passing them to youtube-dl.
File name is properly detected by youtube-dl;
If case of multiple download modes for different quality and formats they are listed in menu (using youtube-dl -F option);

INSTALLATION

Just run ./install. For packaging variable DESTDIR is supported.

Runtime dependencies:
- bash
- coreutils
- grep
- kdialog
- optionally: some terminal emulator - previously was used to see progress, but now it is essential, using kdialog

USAGE

Place launcher on reachable for drag-n-drop place (panel, dock, etc), then just drag links from browsers to launcher.
Tested with konqueror, firefox and seamonkey, most other should work as well.
You may get some brief help, launching it directly by click.

CONFIGURATION

Begining from version 1.2.2, configuration files are created anyway if they don't exist, otherwise they are not changed.
If you want to use default progress monitor, using kdialog, disable all download tools and terminal emulators (by default it is done).

Configuration is done currently by editing of configuration files in text editor. Description of files may be found in brief help.
To disable some "tools" or "term" variants just comment them by sharp (#), no need to remove them.

CHOOSING DOWNLOAD TOOLS

Begining from version 1.3, progress is displayed essentially, using kdialog.
Also download process may be fully managed by various download managers, using detected link.
However, there is no way for them to detect proper file name.
The only hope is when they accept filename argument; kde copy tool, which is in list by default, does it (its another feature is essential integration with KDE job control system).

Terminal emulator, initially used for progress tracking, may be still useful if you get some youtube-dl bug.
To disable some elements just clean this file (in this case there is nothing to probe).

Contact: nick87720z@gmail.com
