
cd linux-5.15.56

# Disable cert check
scripts/config --disable SYSTEM_REVOCATION_KEYS
scripts/config --disable SYSTEM_TRUSTED_KEYS 


# Build kernel
make -j$(($(nproc) - 1)) CC="ccache gcc"


# Prepare modules
make -j$(($(nproc) - 1)) modules_prepare CC="ccache gcc"

# Make modules
make -j$(($(nproc) - 1)) modules CC="ccache gcc"

# Build uvc module
#make -j$(($(nproc) - 1)) M=drivers/media/usb CC="ccache gcc"