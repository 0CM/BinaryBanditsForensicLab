#!/bin/bash

# Get the machine architecture
ARCH=$(uname -m)

#Arch independent packages and tools
```
sudo -u ubuntu python3 -m venv /home/ubuntu/pyapps
sudo -u ubuntu python3 -m venv /home/ubuntu/pyflare
sudo -u ubuntu chmod 755 /home/ubuntu/pyapps/bin/hindsight.py
sudo -u ubuntu chmod 755 /home/ubuntu/pyapps/bin/hindsight_gui.py
sudo -u ubuntu /home/ubuntu/pyflare/bin/python3 -m pip install flare-capa
sudo -u ubuntu /home/ubuntu/pyapps/bin/python3 -m pip install peepdf-3 pdfid oletools pyhindsight browserexport windowsprefetch xlsxgrep tabulate dnspython wheel
sudo -u ubuntu /home/ubuntu/pyapps/bin/python3 -m pip install https://github.com/msuhanov/dfir_ntfs/archive/1.1.18.tar.gz
sudo -u ubuntu /home/ubuntu/pyapps/bin/python3 -m pip install git+https://github.com/cisagov/ioc-scanner.git
sudo -u ubuntu sh -c 'git clone https://github.com/CISOfy/lynis $HOME/tools/lynis'
```
# Check the architecture and execute corresponding commands
if [ "$ARCH" = "aarch64" ]; then
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/EZTools_aarch64-20240710.tar.gz| tar -xz -C $HOME/tools/'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/sidr_aarch64-20240702.tar.gz| tar -xz -C $HOME/tools/'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ufrisk/MemProcFS/releases/download/v5.9/MemProcFS_files_and_binaries_v5.9.18-linux_aarch64-20240613.tar.gz| tar -xz -C $HOME/tools/ --one-top-level=memprocfs' 
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/Yamato-Security/hayabusa/releases/download/v2.16.0/hayabusa-2.16.0-linux-arm.zip |  bsdtar -xvf- -C $HOME/tools/hayabusa'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/trufflesecurity/trufflehog/releases/download/v3.79.0/trufflehog_3.79.0_linux_arm64.tar.gz| tar -xz -C $HOME/tools/trufflehog --one-top-level=trufflehog'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/praetorian-inc/noseyparker/releases/download/v0.18.1/noseyparker-v0.18.1-aarch64-unknown-linux-gnu.tar.gz | tar -xz -C $HOME/tools/ --one-top-level=noseyparker'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/chainsaw_aarch64-20240713.tar.gz| tar -xz -C $HOME/tools/ --one-top-level=chainsaw'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/timeliner_aarch64-20240717.tar.gz| tar -xz -C $HOME/tools/'
	sudo -u ubuntu sh -c 'git clone https://github.com/SigmaHQ/sigma $HOME/tools/chainsaw/sigma'
	sudo -u ubuntu chmod 755 /home/ubuntu/tools/hayabusa/hayabusa-2.16.0-lin-aarch64-gnu
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO-  https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_arm64.zip |  bsdtar -xvf- -C $HOME/tools/pup && sudo ln -s $HOME/tools/pup/pup /usr/bin/pup && chmod 755 $HOME/tools/pup/pup'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/vt-cli_aarch64-20240720.tar.gz| tar -xz -C $HOME/tools/vt && sudo ln -s $HOME/tools/vt/vt /usr/bin/vt'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/projectdiscovery/nuclei/releases/download/v3.3.0/nuclei_3.3.0_linux_arm64.zip |  bsdtar -xvf- -C $HOME/tools/nuclei && sudo ln -s $HOME/tools/nuclei/nuclei /usr/bin/nuclei && chmod 755 $HOME/tools/nuclei/nuclei'
elif [ "$ARCH" = "x86_64" ]; then
    echo "Running commands for x86_64 architecture"
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/EZTools_aarch64-20240710.tar.gz| tar -xz -C $HOME/tools/'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/sidr_aarch64-20240702.tar.gz| tar -xz -C $HOME/tools/'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ufrisk/MemProcFS/releases/download/v5.9/MemProcFS_files_and_binaries_v5.9.18-linux_aarch64-20240613.tar.gz| tar -xz -C $HOME/tools/ --one-top-level=memprocfs'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/Yamato-Security/hayabusa/releases/download/v2.16.0/hayabusa-2.16.0-linux-arm.zip |  bsdtar -xvf- -C $HOME/tools/hayabusa'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/trufflesecurity/trufflehog/releases/download/v3.79.0/trufflehog_3.79.0_linux_arm64.tar.gz| tar -xz -C $HOME/tools/trufflehog --one-top-level=trufflehog'
	sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/praetorian-inc/noseyparker/releases/download/v0.18.1/noseyparker-v0.18.1-aarch64-unknown-linux-gnu.tar.gz | tar -xz -C $HOME/tools/ --one-top-level=noseyparker'
	sudo -u ubuntu sh -c 'git clone https://github.com/SigmaHQ/sigma $HOME/tools/chainsaw/sigma'
	sudo -u ubuntu sh -c 'git clone https://github.com/CISOfy/lynis $HOME/tools/lynis'
else
    echo "Unsupported architecture: $ARCH"
fi