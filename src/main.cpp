#include "CLI/CLI.hpp"
#include <fmt/ranges.h>
#include <vector>

int main(int argc, char **argv) {
  CLI::App app{"App description"};

  // Define options
  int p = 0;
  app.add_option("-p", p, "Parameter");

  CLI11_PARSE(app, argc, argv);
  fmt::print("Parameter value: {}\n", p);

  std::vector<int> v = {1, 2, 3};
  fmt::print("{}\n", v);

  return 0;
}
