## **LINUX TIPS AND TRICKS**

**Create Folder Shortcut**
command:  `ln -s  <full-link-to-folder> <link-to-shorctut-with-name>`
eg:  `ln -s /media/insanefarhan/Work/work-1 ~/Desktop/work1-shortcut`

**fix npm error**
do not use exfat partition. use ntfs or ext4 instead (exfat does not support bin links)