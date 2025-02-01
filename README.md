# CPP template project with conan and Catch2 tests

# Building:
### Build type in conan command and i cmake has to match, else missing posible headers problem

```
conan install . --output-folder=build --build=missing -s build_type=Debug
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles"
cmake --build build
```
