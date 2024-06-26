#!/bin/bash
setfont -d
echo
echo "Decrypting and Mounting"
echo
cryptsetup luksOpen /dev/nvme0n1p7 cryptroot
cryptsetup luksOpen /dev/nvme0n1p3 storage

mkdir /mnt/home
mkdir /mnt/boot
mkdir /mnt/.snapshots
mkdir /tmp/btrfsroot

mount -o rw,noatime,compress=zstd,subvol=@ /dev/mapper/cryptroot /mnt
mount -o rw,noatime,compress=zstd,subvol=@home /dev/mapper/cryptroot /mnt/home
mount -o rw,noatime,fmask=0022,dmask=0022 /dev/nvme0n1p2 /mnt/boot
mount -o rw,noatime,fmask=0022,dmask=0022 /dev/nvme0n1p2 /boot
mount -o subvolid=5 /dev/mapper/cryptroot /tmp/btrfsroot
mount -o rw,noatime,compress=zstd,subvol=@snapshots /dev/mapper/cryptroot /mnt/.snapshots

echo
echo  "Mounted and ready to arch-chroot or Snapper-Rollback"
echo
echo  "Commands to setup wifi connection:"
echo  "iwctl"
echo  "station wlan0 connect Casita5"
echo  "exit from iwd-iwctl"
echo  "ping -c 3 google.com"
echo
echo  "arch-chroot /mnt to chroot"
echo  "btrfs subvol list /tmp/btrfsroot  snapper-rollback num"
echo
echo
