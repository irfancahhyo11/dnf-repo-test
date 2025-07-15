qemu-system-x86_64 \
-enable-kvm                                                    \
-m 4G                                                          \
-smp 2                                                         \
-hda myVirtualDisk.qcow2                                       \
-boot d                                                        \
#-cdrom regular-kde-latest-x86_64.iso                        \
-netdev user,id=net0,net=192.168.0.0/24,dhcpstart=192.168.0.9  \
-device virtio-net-pci,netdev=net0                             \
-vga qxl                                                       \
-device AC97
