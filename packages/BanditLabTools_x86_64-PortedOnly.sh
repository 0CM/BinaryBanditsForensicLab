# Create Folder Structure
sudo sh -c "mkdir -p $HOME/BanditLabTools"
sudo sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/EZTools_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
sudo sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/sidr_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'
sudo sh -c 'wget --no-check-certificate -qO- https://github.com/0CM/BinaryBanditsForensicLab/raw/main/packages/timeliner_x86_64-20240725.tar.gz | tar -xz -C "$HOME"/tools/'