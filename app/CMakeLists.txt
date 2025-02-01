add_executable(${PROJECT_NAME} main.cpp)  # Specifies the executable to build.

target_link_libraries(${PROJECT_NAME} fmt::fmt CLI11::CLI11)
