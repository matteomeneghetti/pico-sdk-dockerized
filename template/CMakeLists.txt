cmake_minimum_required(VERSION 3.13)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

set(CMAKE_C_COMPILER "/usr/bin/arm-none-eabi-gcc" CACHE PATH "" FORCE)
set(CMAKE_CXX_COMPILER "/usr/bin/arm-none-eabi-g++" CACHE PATH "" FORCE)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

project(sample C CXX ASM)

pico_sdk_init()

add_executable(hello_serial main.c)

target_link_libraries(hello_serial pico_stdlib)

pico_add_extra_outputs(hello_serial)
