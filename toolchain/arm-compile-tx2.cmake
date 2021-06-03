set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)
set(CMAKE_CROSSCOMPILING 1)

set(CMAKE_SYSROOT ${ROOTFS})
set(CMAKE_FIND_ROOT_PATH ${ROOTFS})

set(CMAKE_C_COMPILER ${CROSS_COMPILER_PATH}/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${CROSS_COMPILER_PATH}/aarch64-linux-gnu-g++)

set(CMAKE_LIBRARY_PATH
        ${ROOTFS}/usr/lib/aarch64-linux-gnu
        ${ROOTFS}/usr/lib
        ${ROOTFS}/usr
        )

set(RPATH_VAR ${ROOTFS}/usr/lib/aarch64-linux-gnu)
SET(CMAKE_BUILD_RPATH ${RPATH_VAR})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

add_definitions(-DLINUX_ARM)