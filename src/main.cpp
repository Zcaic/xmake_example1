#include <iostream>
#include "mymath.hpp"
#define FMT_HEADER_ONLY
#include "fmt/core.h"
#include"fmt/color.h"

int main(int argc, char *argv[])
{
    double x = 1.0;
    double y = 2.0;
    double res = add(x, y);
    std::cout << "The `add` result is: " << res << std::endl;
    fmt::print("The `add` result is: {0}", res);
    return 0;
}