# Install ccache for faster incremental builds
sudo apt install ccache
# Set limit to 20 Gb
ccache -M 20G
# Clone kernel source
#git clone https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/jammy 


wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.56.tar.xz
tar -xvf linux-5.15.56.tar.xz

cd linux-5.15.56

# Copy config from current system
cp -v /boot/config-$(uname -r) .config
cp /usr/src/linux-headers-$(uname -r)/Module.symvers .