# CPP conan template

A template repo to quickly start cpp projects using [conan package manager](https://conan.io) and CMake.
_ Originally Inspired by [ForgottenUmbrella's gist](https://gist.github.com/ForgottenUmbrella/0f32f6446b2948a3a5a99687b264910d)_

# Important!!!:
Build type in conan command and i cmake has to match, else had missing headers problem
`conan install . --output-folder=build --build=missing -s build_type=Debug`
`cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug -G "Unix Makefiles"`

## Configure

1. Change project name in `CMakeList.txt`.
2. Update dependencies in `conanfile.txt`.

## Setup

Prime conan

```sh
conan profile detect
```

Run

```sh
./setup.sh
```

or

```sh
conan install . --output-folder=build --build=missing
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -G Ninja
ln -s compile_commands.json ../compile_commands.json # link compile_commands.json to home dir (optinal)
```

**Note:** Omit `ln -s ...` for windows manually copy compile_commands (AFAIK ln is not supported on windows).

## Compile

#### After file changes

```sh
cmake --build build
```

#### After dependencies changes

```sh
conan install . --output-folder=build --build=missing
```

## Binary

Binary/app can be found in `build/` which will be same as your project name.

