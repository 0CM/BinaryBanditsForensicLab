ARCH=$(uname -m)

sudo -u ubuntu sh -c 'echo"uname -m" > $HOME/banditlab.log'
sudo -u ubuntu sh -c 'uname -m >> $HOME/banditlab.log'
sudo -u ubuntu sh -c 'echo"ARCH Variable" >> $HOME/banditlab.log'
sudo -u ubuntu sh -c 'echo"$ARCH" >> $HOME/banditlab.log'
sudo -u ubuntu sh -c 'echo"lscpu" >> $HOME/banditlab.log'
sudo -u ubuntu sh -c 'lscpu | grep Architecture | awk {'print $2'} >> $HOME/banditlab.log'

# Create Folder Structure
for dir in DATA ewfmount evidence tools tools/hayabusa tools/memprocfs tools/trufflehog tools/noseyparker tools/pup tools/vt tools/nuclei; do
    sudo -u ubuntu sh -c "mkdir -p $HOME/$dir"
done

# Check the architecture and execute corresponding commands
if [ "$ARCH" = "aarch64" ]; then
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/EZTools_aarch64-20240710.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/sidr_aarch64-20240702.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ufrisk/MemProcFS/releases/download/v5.10/MemProcFS_files_and_binaries_v5.10.1-linux_aarch64-20240721.tar.gz | tar -xz -C "$HOME"/tools/memprocfs'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/Yamato-Security/hayabusa/releases/download/v2.16.0/hayabusa-2.16.0-linux-arm.zip | bsdtar -xvf- -C "$HOME"/tools/hayabusa'
    sudo -u ubuntu sh -c 'chmod 755 "$HOME"/tools/hayabusa/hayabusa-2.16.0-lin-aarch64-gnu'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/trufflesecurity/trufflehog/releases/download/v3.79.0/trufflehog_3.79.0_linux_arm64.tar.gz | tar -xz -C "$HOME"/tools/trufflehog'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/praetorian-inc/noseyparker/releases/download/v0.18.1/noseyparker-v0.18.1-aarch64-unknown-linux-gnu.tar.gz | tar -xz -C "$HOME"/tools/noseyparker'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/chainsaw_aarch64-20240713.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/timeliner_aarch64-20240717.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_arm64.zip | bsdtar -xvf- -C "$HOME"/tools/pup && sudo ln -s "$HOME"/tools/pup/pup /usr/bin/pup && chmod 755 "$HOME"/tools/pup/pup'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/vt-cli_aarch64-20240720.tar.gz | tar -xz -C "$HOME"/tools/vt && sudo ln -s "$HOME"/tools/vt/vt /usr/bin/vt && chmod 755 "$HOME"/tools/vt/vt'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/projectdiscovery/nuclei/releases/download/v3.3.0/nuclei_3.3.0_linux_arm64.zip | bsdtar -xvf- -C "$HOME"/tools/nuclei && sudo ln -s "$HOME"/tools/nuclei/nuclei /usr/bin/nuclei && chmod 755 "$HOME"/tools/nuclei/nuclei'
elif [ "$ARCH" = "x86_64" ]; then
    echo "Running commands for x86_64 architecture"
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/EZTools_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/sidr_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ufrisk/MemProcFS/releases/download/v5.10/MemProcFS_files_and_binaries_v5.10.1-linux_x64-20240721.tar.gz | tar -xz -C "$HOME"/tools/ --one-top-level=memprocfs'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/Yamato-Security/hayabusa/releases/download/v2.16.0/hayabusa-2.16.0-linux-intel.zip | bsdtar -xvf- -C "$HOME"/tools/hayabusa'
    sudo -u ubuntu sh -c 'chmod 755 "$HOME"/tools/hayabusa/hayabusa-2.16.0-lin-x64-musl'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/trufflesecurity/trufflehog/releases/download/v3.80.1/trufflehog_3.80.1_linux_amd64.tar.gz | tar -xz -C "$HOME"/tools/trufflehog --one-top-level=trufflehog'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/praetorian-inc/noseyparker/releases/download/v0.18.1/noseyparker-v0.18.1-x86_64-unknown-linux-gnu.tar.gz | tar -xz -C "$HOME"/tools/ --one-top-level=noseyparker'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/WithSecureLabs/chainsaw/releases/download/v2.9.2/chainsaw_x86_64-unknown-linux-gnu.tar.gz | tar -xz -C "$HOME"/tools/ --one-top-level=chainsaw'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/timeliner_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip | bsdtar -xvf- -C "$HOME"/tools/pup && sudo ln -s "$HOME"/tools/pup/pup /usr/bin/pup && chmod 755 "$HOME"/tools/pup/pup'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/VirusTotal/vt-cli/releases/download/1.0.0/Linux64.zip | bsdtar -xvf- -C "$HOME"/tools/vt && sudo ln -s "$HOME"/tools/vt/vt /usr/bin/vt && chmod 755 "$HOME"/tools/vt/vt'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/projectdiscovery/nuclei/releases/download/v3.3.0/nuclei_3.3.0_linux_amd64.zip | bsdtar -xvf- -C "$HOME"/tools/nuclei && sudo ln -s "$HOME"/tools/nuclei/nuclei /usr/bin/nuclei && chmod 755 "$HOME"/tools/nuclei/nuclei'
else
    echo "Unsupported architecture: $ARCH"
fi