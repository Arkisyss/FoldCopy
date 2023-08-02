# FoldCopy

Two scripts in bash to copy folders from the source directory to a destination directory.

    1. copyfold.sh : for repeated copies of the same directories.
    2. allcopy.sh : for all types of copying.
## Installation

- Clonez this repo !

```bash

  https://github.com/Arkisyss/copy_folder.git
  
```
 
## Modification

- Change the source and destination folders in **copyfold.sh**.
 
```bash
source_dir=chemin/du/dossier/Source     # change source path
destination_dir=chemin/du/dossier/de/destination        # change destination path

```


## Usages
- Follow these steps for **copyfold.sh**!

```bash
cd copy_folder

chmod +x copyfold.sh

./copyfold.sh
```

- Follow these steps for **allcopy.sh**

```bash
cd copy_folder

chmod +x allcopy.sh

./allcopy.sh chemin/dossier/destinatire chemin/dossier/destination
```



## Optimizations
- Move **allcopy.sh** to **/usr/local/bin/**
So that the script can be used by all system users.

**!! You'll need administrator rights to copy the script !!**

![GIF d'exemple](https://media.giphy.com/media/IwAZ6dvvvaTtdI8SD5/giphy.gif)
