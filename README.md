# The Ultimate Yocto Project: From Zero to Hero 🚀

Build a complete Linux image from scratch for the BeagleBone Black using the Yocto Project.

---
## 📖 Description
This project demonstrates how to create a full embedded Linux system for the BeagleBone Black starting from zero.
It covers the essential steps of setting up a Yocto-based environment, configuring layers, and building a custom image tailored for the board.

The goal is to provide a clear and practical path to understand how a real Yocto project is structured and built, from development environment setup to final deployment on hardware.

---
## 🎯 Objectives
* Understand the Yocto build system workflow
* Learn how to configure layers and recipes
* Build a minimal and customizable Linux image
* Deploy and test the image on real hardware

---
## 🛠️ Requirements
* Linux host machine (Ubuntu recommended)
* Docker installed and running
* Internet connection for fetching sources

---
## ⚙️ Setup
This project uses a containerized build environment for reproducibility.

Simply run the Docker-based build script:

```bash
./docker.sh
```

The build process will run inside a container, ensuring a clean and consistent environment.

---
## 🔨 Build
Once the build is complete, the generated image will be available as:

```text
beaglebone-rootfs-<version>.wic.xz
```
This image can be flashed to an SD card and used to boot the board.

---
## 💾 Flashing the Image
Example using `dd`:
```bash
xz -d beaglebone-rootfs-<version>.wic.xz
sudo dd if=beaglebone-rootfs-<version>.wic of=/dev/sdX bs=4M status=progress
sync
```
⚠️ Replace `/dev/sdX` with your SD card device.

---
## 🖥️ Serial Console
To monitor the boot process:
```bash
picocom -b 115200 /dev/ttyUSB0
```

---
## 🧩 Supported Machine
* BeagleBone Black

---
## 📦 Project Structure
* `kas/` → kas configuration files
* `layers/` → Yocto layers (meta-openembedded, BSP, etc.)
* `build/` → generated build directory

---
## 🚀 Next Steps
* Add custom packages and recipes
* Enable networking, SSH, and additional services
* Customize the kernel and Device Tree
* Integrate CI/CD for automated builds

---
## 🤝 Contribution
Contributions are welcome! Feel free to open issues or submit pull requests to improve the project.

---
## 📜 License
This project is open-source and available under the MIT License.
