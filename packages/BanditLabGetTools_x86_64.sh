# Create Folder Structure
for dir in DATA ewfmount evidence tools tools/hayabusa tools/memprocfs tools/trufflehog tools/noseyparker tools/pup tools/vt tools/nuclei; do
    sudo -u ubuntu sh -c "mkdir -p $HOME/$dir"
done

sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/EZTools_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/sidr_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ufrisk/MemProcFS/releases/download/v5.10/MemProcFS_files_and_binaries_v5.10.1-linux_x64-20240721.tar.gz | tar -xz -C "$HOME"/tools/memprocfs'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/Yamato-Security/hayabusa/releases/download/v2.16.0/hayabusa-2.16.0-linux-intel.zip | bsdtar -xvf- -C "$HOME"/tools/hayabusa'
sudo -u ubuntu sh -c 'chmod 755 "$HOME"/tools/hayabusa/hayabusa-2.16.0-lin-x64-musl'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/trufflesecurity/trufflehog/releases/download/v3.80.1/trufflehog_3.80.1_linux_amd64.tar.gz | tar -xz -C "$HOME"/tools/trufflehog'
    sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/praetorian-inc/noseyparker/releases/download/v0.18.1/noseyparker-v0.18.1-x86_64-unknown-linux-gnu.tar.gz | tar -xz -C "$HOME"/tools/noseyparker'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/WithSecureLabs/chainsaw/releases/download/v2.9.2/chainsaw_x86_64-unknown-linux-gnu.tar.gz | tar -xz -C "$HOME"/tools/chainsaw'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/timeliner_x86_64-20240805.tar.gz | tar -xz -C "$HOME"/tools/'
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip | bsdtar -xvf- -C "$HOME"/tools/pup && chmod 755 "$HOME"/tools/pup/pup && sudo ln -s "$HOME"/tools/pup/pup /usr/bin/pup '
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/VirusTotal/vt-cli/releases/download/1.0.0/Linux64.zip | bsdtar -xvf- -C "$HOME"/tools/vt && chmod 755 "$HOME"/tools/vt/vt && sudo ln -s "$HOME"/tools/vt/vt /usr/bin/vt '
sudo -u ubuntu sh -c 'wget --no-check-certificate -qO- https://github.com/projectdiscovery/nuclei/releases/download/v3.3.0/nuclei_3.3.0_linux_amd64.zip | bsdtar -xvf- -C "$HOME"/tools/nuclei && chmod 755 "$HOME"/tools/nuclei/nuclei && sudo ln -s "$HOME"/tools/nuclei/nuclei /usr/bin/nuclei'