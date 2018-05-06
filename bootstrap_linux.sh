#!/bin/sh

# TODO(sgosselin): clean this up.

# Install gnu toolchain for arm.
apt-get install gcc-arm-linux-gnueabi
apt-get install gcc-aarch64-linux-gnu

# export CROSS_COMPILE=arm-linux-gnueabi-
# export CROSS_COMPILE=aarch64-linux-gnu-

# Install zsh
apt-get install zsh \

