
cd /d C:\Users\Nigga\Desktop\CLEANERS (ALL INCLUDED)\Cleaners\
start /wait c1.bat
start /wait c2.bat
start /wait c3.bat
start /wait c4.bat
start /wait cf.bat
start /wait Cleaner1.bat
start /wait Cleaner2.bat
start /wait Cleaner3.bat
start /wait Cleaner4.bat
start /wait sc1.bat
start /wait sc2.bat
start /wait sc3.bat
start /wait sc4.bat
start /wait eaccleaner.bat
start /wait FortniteCleaner.bat
start /wait FNCLEAN.bat
start /wait regedit_change.bat
start /wait Registry.bat
start /wait Reset_ip.bat
start /wait Cleaner8.exe
start /wait cleaner.exe
start /wait deepcleaner.exe
start /wait EventCleaner.exe
cls


echo Finished device and drive cleaning.

title Goblin - Cleaner - Stage 2 / 3 - Remove device manager connections
echo Cleaning more system identifiers...

for %%p in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%p:\nul (
        DevManView.exe /uninstall "%%p:\" 
        echo Cleaned %%p drive
    )
)

@echo on
call DevManView.exe /uninstall "C:\"
call DevManView.exe /uninstall "Realtek*" /use_wildcard
call DevManView.exe /uninstall "Disk drive*" /use_wildcard
call DevManView.exe /uninstall "Disk"
call DevManView.exe /uninstall "disk"
call DevManView.exe /uninstall "Disk&*" /use_wildcard
call DevManView.exe /uninstall "SWD\WPDBUSENUM*" /use_wildcard
call DevManView.exe /uninstall "USBSTOR*" /use_wildcard
call DevManView.exe /uninstall "SCSI\Disk*" /use_wildcard
call DevManView.exe /uninstall "STORAGE*" /use_wildcard
call DevManView.exe /uninstall "Motherboard*" /use_wildcard
call DevManView.exe /uninstall "Volume*" /use_wildcard
call DevManView.exe /uninstall "PCI-to-PCI*" /use_wildcard
call DevManView.exe /uninstall "System*" /use_wildcard
call DevManView.exe /uninstall "ACPI\*" /use_wildcard
call DevManView.exe /uninstall "Remote*" /use_wildcard
call DevManView.exe /uninstall "Standard*" /use_wildcard

@echo off
call devcon rescan

@echo on
call DevManView.exe /uninstall "WAN Miniport*" /use_wildcard
call DevManView.exe /uninstall "Microsoft*" /use_wildcard
call DevManView.exe /uninstall "PCI\VEN*" /use_wildcard
call DevManView.exe /uninstall "SWD\MS*" /use_wildcard

title Goblin - Cleaner - Stage 3 / 3 - Apple Cleaner
@echo off
pause
