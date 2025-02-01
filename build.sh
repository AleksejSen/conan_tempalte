conan install . --output-folder=build --build=missing -s build_type=Debug
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles"
ln -s compile_commands.json ../compile_commands.json # link compile_commands.json to home dir (optinal)
# Build 
cmake --build build
