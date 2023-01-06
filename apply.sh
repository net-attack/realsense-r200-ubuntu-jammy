# Get kernel
git clone https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/jammy 
cd jammy
cp -v /boot/config-$(uname -r) .config
make -j3 CC="ccache gcc"
scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS
make -j3 modules CC="ccache gcc"