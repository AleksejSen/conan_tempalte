conan install . --output-folder=build --build=missing
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -G Ninja
ln -s compile_commands.json ../compile_commands.json # link compile_commands.json to home dir (optinal)
