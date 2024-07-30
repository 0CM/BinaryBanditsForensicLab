BanditLab - Ubuntu based Linux VM for Digital Forensics
----------------
It was supposed to be a lightweight Linux distribution for digital forensics
and incident response, but it kind of spiraled out of control.

Primarily focused on the Apple Silicon or other ARM64 based systems.

* x86_64 binaries will be ported later.

Prerequisites:
---------------
**Multipass**

Ubuntu Multipass is a tool developed by Canonical that allows users to create, manage, 
and configure lightweight virtual machines (VMs) on their local system, 
specifically designed for Ubuntu environments.

Installation:

* via Brew -> brew install multipass 
* via stand alone installer -> <https://multipass.run/install>

Lab Deployment:
----------------
The following command will create a VM named BanditLab with 2GB of RAM and a 15GB disk. 
 - You can adjust the VM name and hardware specifications according to your preferences.
```
multipass launch -n BanditLab -m 2GB -d 15G --cloud-init https://raw.githubusercontent.com/0CM/BinaryBanditsForensicLab/main/BanditLab.yaml
```

Log into the VM:
```
multipass shell BanditLab
```
Stop the VM:
```
multipass stop BanditLab
```
Delete the VM:
```
multipass delete BanditLab
multipass purge
```
Share folder between the VM and host system:
```
multipass mount path/to/local/folder BanditLab:/home/ubuntu/DATA
```

In order to see files in the macOS folder Full Disk access for Multipass is required.

```
System Preferences > Security & Privacy Preferences >  Full Disk Access 
```

Lab Help:
----------------
Run the alias command to get a list of shortcuts for running the custom tools.

```
alias
```

Forensics Tools:
----------------

* **EZTools** - [Eric Zimmerman's tools](https://ericzimmerman.github.io/#!index.md)
  * **JLECmd** version 1.5.0.0 - Jump List parser
  * **EvtxECmd** version 1.5.0.0 - Event log (evtx) parser
  * **LECmd** version 1.5.0.0 -  Lnk file parser
  * **MFTECmd** version 1.2.2.1 - $MFT, $Boot, $J, $SDS, $I30 parser
  * **RBCmd** version 1.5.0.0 - Recycle Bin artifact (INFO2/$I) parser
  * **RECmd** version 2.0.0.0 - Command line Registry tool 
  * **rla** version 2.0.0.0 - Replay transaction logs and update Registry hives 
  * **RecentFileCacheParser** version 1.5.0.0
  * **SQLECmd** version 1.0.0.0
  * **SrumECmd** version 0.5.1.0
  * **WxTCmd** version 1.0.0.0
  * **bstrings** version 1.5.2.0

* **SIDR** - [Github Repository](https://github.com/strozfriedberg/sidr)
  * SIDR (Search Index DB Reporter) is a Rust-based tool designed to parse Windows 
    search artifacts from Windows 10 (and prior) and Windows 11 systems.
    
* **MemProcFS** - [Github Repository](https://github.com/ufrisk/MemProcFS)
  * MemProcFS: MemProcFS is an easy and convenient way of viewing 
    physical memory as files in a virtual file system.   

* **Timeliner** - [Github Repository](https://github.com/airbus-cert/timeliner)
  * Timeliner uses a real expression engine to parse
    and apply the BPF logic to filter events based on the time.  


**SIGMA, YARA, IOC and other scanners:**
--------------------------
* **Chainsaw** - [Github Repository](https://github.com/WithSecureLabs/chainsaw)
	 - Chainsaw offers a generic and fast method of searching through event logs
	   for keywords, and by identifying threats using built-in support for Sigma 
	   detection rules, and via custom Chainsaw detection rules.
		
* **Hayabusa** - [Github Repository](https://github.com/Yamato-Security/hayabusa)
	 - Hayabusa is a Windows event log fast forensics timeline generator
	   and threat hunting tool created by the Yamato Security.

* **VT-CLI** - [Github Repository](https://github.com/VirusTotal)
	 - VirusTotal Command Line Interface

* **Nikto**	- [Github Repository](https://github.com/sullo/nikto)
	- Nikto web server scanner

* **Nuclei**	- [Github Repository](https://github.com/projectdiscovery/nuclei)
	-  Fast and customisable vulnerability scanner based on simple YAML based DSL.

* **ioc-scanner**	- [Github Repository](https://github.com/cisagov/ioc-scanner)
	-  Cybersecurity and Infrastructure Security Agency IoC scanner

* **yara**	- [Github Repository](https://virustotal.github.io/yara/)
	-  Pattern matching swiss knife for malware researchers


**Sensitive Data / Secrets Scanners:**
--------------------------
* **Nosey Parker** - [Github Repository](https://github.com/praetorian-inc/noseyparker)
	 - Nosey Parker is a command-line program that finds secrets
	   and sensitive information in textual data.
	 
* **Trufflehog** - [Github Repository](https://github.com/trufflesecurity/trufflehog)
	 - TruffleHog is an open-source secret scanning engine that detects
	   and helps resolve exposed secrets across your entire tech stack.


**Text Manipulation Tools:**
--------------------------
 
* **JQ** - [Github Repository](https://jqlang.github.io/jq/)
	 - Slice and filter and map and transform JSON structured data 

* **PUP** - [Github Repository](https://github.com/ericchiang/pup)
	 - Command line tool for processing HTML

* **ugrep** - [Github Repository](https://github.com/Genivia/ugrep)
	 - Faster grep with an interactive query UI 


**Python Libs and Tools:**
--------------------------
* **peepdf** - [Github Repository](https://github.com/jesparza/peepdf) - tool to explore 
PDF files, it can parse different versions of a file, object streams and encrypted files.
* **pdfid** - [Github Repository](https://github.com/DidierStevens)
	  - Didier Stevens’s tool to test a PDF file
* **dfir\_ntfs** - [Github Repository](https://github.com/msuhanov/dfir_ntfs)
	  - an NTFS/FAT parser for digital forensics & incident response
* **oletools** - [Github Repository](https://github.com/decalage2/oletools)
	  - oletools is a package of python tools to analyze Microsoft OLE2 files
* **hindsight** - [Github Repository](https://github.com/obsidianforensics/hindsight)
	  - web artefacts and browsing history from Chromium-based web browsers
* **browserexport** - [Github Repository](https://github.com/seanbreckenridge/browserexport)
	  - web artefacts and browsing history from Chrome-based web browsers,Firefox, Safari and more. 	  
* **windowsprefetch** - [Github Repository](https://github.com/PoorBillionaire/Windows-Prefetch-Parser)
	  - Parser for Windows XP - Windows 10 Prefetch files 	  
* **xlsxgrep** - [Github Repository](https://github.com/zazuum/xlsxgrep)
	  - tool to search text in XLSX, XLS, CSV, TSV and ODS files.	
* **flare-capa** - [Github Repository](https://github.com/mandiant/capa)
	  - capa detects capabilities in executable files. You run it against a PE,
	    ELF, .NET module, shellcode file, or a sandbox report

**Optional Tools**:
-------------------
* **azure-cli** - [Github Repository](https://github.com/Azure/azure-cli) - Azure Command-Line Interface
	- run ```installazurecli``` to install the package

* **gcloud-cli** - [Home Page](https://cloud.google.com/cli?hl=en) - Google Cloud Command Line Interface
	- run ```installgcloudcli``` to install the package

* **PowerShell 7.4** - [Home Page](https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.4) - Microsoft PowerShell 
	- run ```installpwsh``` to install the package

**Linux Packages**:
-------------------
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
* **plaso**
	  - super timeline all the things 
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
	  - package installer for Python
* **tesseract-ocr**
	  - Tesseract 4 adds a new neural net (LSTM) based OCR engine
* **readpe**
	  - readpe is a toolkit designed to analyze Microsoft Windows PE (Portable Executable)
	    binary files. Its tools can parse and compare PE32/PE32+ executable files (EXE, 
	    DLL, OCX, etc), and analyze them in search of suspicious characteristics
* **parallel**	- GNU parallel is a shell tool for executing jobs in parallel using one or more computers.  


