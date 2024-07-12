Ubuntu Linux VM for Digital Forensics


Prerequisites:
---------------

**CPU Arch ARM / Apple Silicon\* **

**Multipass**   -> brew install multipass 
OR
**Stand alone installer** -> <https://multipass.run/install>

\* x86\_64 binaries will be ported later, but at the moment ARM64 is primary focus of this lab deployment.

Forensics Tools:
----------------

* EZTools - [https://ericzimmerman.github.io/\#!index.md](https://ericzimmerman.github.io/#!index.md)
	```
	  * JLECmd version 1.5.0.0 - Jump List parser
	  * EvtxECmd version 1.5.0.0 - Event log (evtx) parser
	  * LECmd version 1.5.0.0 -  Lnk file parser
	  * MFTECmd version 1.2.2.1 - $MFT, $Boot, $J, $SDS, $I30 parser
	  * RBCmd version 1.5.0.0 - Recycle Bin artifact (INFO2/$I) parser
	  * RECmd version 2.0.0.0 - Command line Registry tool 
	  * rla version 2.0.0.0 - Replay transaction logs and update Registry hives 
	  * RecentFileCacheParser version 1.5.0.0
	  * SQLECmd version 1.0.0.0
	  * SrumECmd version 0.5.1.0
	  * WxTCmd version 1.0.0.0
	  * bstrings version 1.5.2.0
	```
* SIDR - (<https://github.com/strozfriedberg/sidr)>
  * SIDR (Search Index DB Reporter) is a Rust-based tool designed to parse Windows search artifacts from Windows 10 (and prior) and Windows 11 systems.

**Python libs and tools:**
--------------------------
	```
	* **peepdf** - <https://github.com/jesparza/peepdf>
		  - Tool to explore PDF files, it can parse different versions of a file,
			object streams and encrypted files.
	* **pdfid** - <https://github.com/DidierStevens>
		  - Didier Stevens’s tool to test a PDF file
	* **dfir\_ntfs** - <https://github.com/msuhanov/dfir_ntfs>
		  - an NTFS/FAT parser for digital forensics & incident response
	* **oletools** - <https://github.com/decalage2/oletools>
		  - oletools is a package of python tools to analyze Microsoft OLE2 files
	* **ExeSpy** - <https://github.com/andyjsmith/Exe-Spy>
		  - ExeSpy is a free, open-source cross-platform Windows PE file viewer. 
		    It supports all valid PE formats, including EXE, DLL, COM, OCX, SYS, 
		    SCR, CPL, AX, ACM, WINMD, MUI, EFI, TSP, and DRV.
	```
**Linux packages**:
-------------------
	```
	* **aeskeyfind**
	  - tool for locating AES keys in a captured memory image
	* **afflib-tools**
	  - Advanced Forensics Format Library (utilities)
	* **binwalk**
	  - tool library for analyzing binary blobs and executable code
	* **cewl**
	  - custom word list generator
	* **dc3dd**
	  - patched version of GNU dd with forensic features
	* **dislocker**
	  - read/write encrypted BitLocker volumes
	* **dnsrecon**
	  - DNS enumeration script
	* **ewf-tools**
	  - collection of tools for reading and writing EWF (E01) files
	* **exifprobe**
	  - read metadata from digital pictures
	* **extundelete**
	  - utility to recover deleted files from ext3/ext4 partition
	* **fcrackzip**
	  - password cracker for zip archives
	* **forensic-artifacts**
	  - knowledge base of forensic artifacts (data files)
	* **forensics-colorize**
	  - show differences between files using color graphics
	* **galleta**
	  - Internet Explorer cookie forensic analysis tool
	* **getxattr**
	  - getxattr() retrieves the value of the extended attribute identified 
	     by name and associated with the given path in the file system.
	* **hashdeep**
	  - recursively compute hashsums or piecewise hashings
	* **pff-tools**
	  - utilities for MS Outlook PAB, PST and OST files
	* **mc**
	  - MidnightCommander File Manager
	* **recoverdm**
	  - recover files on disks with damaged sectors
	* **scrounge-ntfs**
	  - Data recovery program for NTFS filesystems
	* **sleuthkit**
	  - tools for forensics analysis on volume and filesystem data
	* **ssdeep**
	  - recursive piecewise hashing tool
	* **yara**
	  - Pattern matching swiss knife for malware researchers
	* **ext3grep**
	  - tool to help recover deleted files on ext3 filesystems
	* **libimage-exiftool-perl**
	  - Exiftool - program to read and write meta information in multimedia files
	* **unblob**
	  - unblob is an accurate, fast, and easy-to-use extraction suite. It parses unknown
	    binary blobs for more than 30 different archive, compression, and file-system 
	    formats, extracts their content recursively.
	* **binvis**
	  - project to visualize binary-file structures in unique ways
	* **testdisk**
	  - partition scanner and disk recovery tool, and PhotoRec file recovery tool
	* **chntpw**
	  - NT SAM password recovery utility
	* **geoip-bin**
	  - IP lookup command line tools that use the GeoIP library
	* **mblaze**
	  - UNIX utilities to deal with Maildir
	* **mboxgrep**
	  - grep through mailboxes
	* **pev**
	  - text-based tool to analyze PE files
	* **tshark**
	  - network traffic analyzer - console version
	* **unar**
	  - unarchiver for a variety of file formats
	* **libvshadow-utils**
	  - libvshadow is a library to access the Volume Shadow Snapshot (VSS) format.
	* **dotnet-runtime-6.0**
	  - .NET runtime v 6.0 for Linux
	* **python3.12-venv**
	  - Python Virtual Environments
	* **python3-pip**
	  - package installer for Python.
	* **tesseract-ocr**
	  - Tesseract 4 adds a new neural net (LSTM) based OCR engine.
	* **readpe**
	  - readpe is a toolkit designed to analyze Microsoft Windows PE (Portable Executable)
	    binary files. Its tools can parse and compare PE32/PE32+ executable files (EXE, 
	    DLL, OCX, etc), and analyze them in search of suspicious characteristics.
	```
