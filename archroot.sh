#!/bin/bash
cryptsetup luksOpen /dev/nvme0n1p2 cryptroot
cryptsetup luksOpen /dev/nvme0n1p3 storage

mount -o noatime,compress=zstd,subvol=@ /dev/mapper/cryptroot /mnt
mount -o noatime,compress=zstd,subvol=@home /dev/mapper/cryptroot /mnt/home
mount /dev/nvme0n1p1 /mnt/boot

mkdir /mnt/btrfs
mkdir /mnt/btrfs1

mount -o noatime,compress=zstd /dev/mapper/storage /mnt/btrfs
mount -o noatime,compress=zstd /dev/mapper/cryptroot /mnt/btrfs1

echo "Sleeping for five seconds, ctrl-c to exit before arch-chroot"
sleep 5
arch-chroot /mnt