# Bootstrapping Guide

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Initial Setup](#initial-setup)
4. [Install Dependencies](#install-dependencies)
5. [NVIDIA GPU Setup (Optional)](#nvidia-gpu-setup-optional)
8. [External Links](#external-links)

## Introduction

This guide provides a step-by-step process for bootstrapping a Ubuntu 24.04 machine with the necessary dependencies for development and deployment of AI applications using Docker.

## Prerequisites

* Ubuntu Server 24.04 machine with SSH access or direct console access
* Ubuntu user with sudo privileges

Make yourself an Ubuntu Server 24.04 USB Key

Boot off it and do fresh clean install

Install OpenSSH Server, and Docker (optional)

Set your IP address statically, or remember it you will need it!

Set a username and password.

Reboot and go to your remote workstation, or continue on the local console.

## Initial Setup

### 1. Copy SSH Key

Copy your SSH key to the machine if working remote from the server:

```bash
ssh-copy-id ubuntu@<node ip address>
```

### 2. Update and Upgrade

Update the package list and upgrade the system:

```bash
sudo apt-get update
sudo apt-get upgrade -y
```

### 3. Install Linux Generic HWE

Install the Linux generic HWE (Hardware Enablement) package:

```bash
sudo apt install --install-recommends linux-generic-hwe-24.04
```

## Install Dependencies

### 1. Basic Dependencies

Install basic dependencies:

```bash
sudo apt install apt-transport-https ca-certificates software-properties-common
sudo apt-get install -y build-essential wget curl git unzip zip libssl-dev libreadline-dev zlib1g-dev cmake python3 python3-pip python3-venv python3-dev htop nfs-common
```

### 2. Docker

Install Docker:

```bash
sudo apt-get install docker.io
```

Add the ubuntu user to the Docker group:

```bash
sudo usermod -aG docker ubuntu
```

### 3. Timezone

Set the timezone for node:

```bash
timedatectl set-timezone <node timezone>
```

## NVIDIA GPU Setup (Optional)

### 1. Install Linux Headers

Install the Linux headers:

```bash
sudo apt-get install linux-headers-$(uname -r)
```

### 2. Install CUDA Drivers

Install the CUDA drivers:

```bash
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get install cuda-drivers
```

Reboot the machine.

### 3. Install CUDA Toolkit

Install the CUDA toolkit:

```bash
sudo apt-get install cuda-toolkit
```

Reboot the machine.

### 4. Install NVTop and NVIDIA Container Toolkit

Install NVTop and NVIDIA Container Toolkit:

```bash
sudo apt-get install nvtop
sudo apt-get install nvidia-container-toolkit
```

Configure the NVIDIA Container Toolkit and set as default runtime:

```bash
## For System Wide
sudo nvidia-ctk runtime configure --runtime=docker --set-as-default

## For local user only
nvidia-ctk runtime configure --runtime=docker --config=$HOME/.config/docker/daemon.json --set-as-default
```

Restart the Docker service:

```bash
sudo systemctl restart docker
```

## External Links

The following links provide additional information and source documents for this guide:

* [Ubuntu Documentation: Installing Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-desktop)
* [Docker Documentation: Installing Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
* [NVIDIA Documentation: CUDA Installation Guide for Linux](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)
