cmake_minimum_required(VERSION 3.15)

set(PROJECT_NAME "default") # CUSTOMISE: your project name
set(PROJECT_VERSION 0.1.0) # CUSTOMISE: project version
set(CMAKE_CXX_STANDARD 17) # CUSTOMISE: standard

project(${PROJECT_NAME} VERSION ${PROJECT_VERSION})

# Include Conan-generated toolchain
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

# add all files of source folder
file(GLOB SOURCES
	src/*.h
	src/*.cpp
)

find_package(fmt REQUIRED)
find_package(CLI11 REQUIRED)


# $source_files is a space-delimited list of filenames.
add_executable(${PROJECT_NAME} ${SOURCES})  # Specifies the executable to build.

target_link_libraries(${PROJECT_NAME} fmt::fmt)
target_link_libraries(${PROJECT_NAME} CLI11::CLI11)
