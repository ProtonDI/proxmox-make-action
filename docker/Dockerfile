FROM debian

# Add Proxmox VE repository
RUN echo "deb [signed-by=/etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list \
    wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 

# Install build dependencies
RUN dpkg --add-architecture arm64 && \
    dpkg --add-architecture riscv64 && \
    apt-get update && \
    apt-get install --no-install-recommends -y \
        apt-utils git debhelper lintian rsync fakeroot \
        build-essential crossbuild-essential-arm64 gcc-riscv64-linux-gnu g++-riscv64-linux-gnu \
        pve-doc-generator
