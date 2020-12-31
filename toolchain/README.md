### Calmcar Cross Compilation ###

* If you're looking to download the necessary files for calmcar cross compilation retrieve the following from the Ottopia google drive
    * rootfs-calmcar.tar.gz: https://drive.google.com/file/d/1zvpQ0ZJkdiYjMldBOdYujZTSZAaRy0gU/view?usp=sharing
    * toolchain-calmcar.tag.gz: https://drive.google.com/file/d/11ALGPnwBSo6n_iQMu67LKk0XzBPrsRON/view?usp=sharing
    * You can unzip these file in the directory of your choice with the following command, ex: tar xvfz rootfs-calmcar.tar.gz -C ./directory_of_your_choice

* If you can't download from google drive there's an option to download from Nvidia directly with the steps below
    * Visit this link: https://developer.nvidia.com/embedded/linux-tegra-r3221 to download the relevant root filesystem and toolchain files or directly use the links below
    * Download the Tegra files first
        * Tegra: https://developer.nvidia.com/embedded/dlc/r32-2-1_Release_v1.0/TX2-AGX/Tegra186_Linux_R32.2.1_aarch64.tbz2
    * Inside the rootfs directory of the Tegra download the sample rootfs files
        * ROOTFS: https://developer.nvidia.com/embedded/dlc/r32-2-1_Release_v1.0/TX2-AGX/Tegra_Linux_Sample-Root-Filesystem_R32.2.1_aarch64.tbz2
    * Now outside the Tegra build download the toolchain files; the relevant compilers are located in the bin directory
        * Toolchain: https://developer.nvidia.com/embedded/dlc/l4t-gcc-7-3-1-toolchain-64-bit
    * Note: this method isn't as effective since several symbolic links need to be configured in order for jetstream to compile

* Lastly set the following cmake variables
    * -DCMAKE_TOOLCHAIN_FILE="toolchain/arm-compile-calmcar.cmake"
    * -DROOTFS=Absolute_path_to_rootfs
    * -DCROSS_COMPILER_PATH=Absolute_path_to_toolchain_directory_where_compilers_are_stored