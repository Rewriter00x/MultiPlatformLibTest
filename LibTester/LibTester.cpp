#include <iostream>
#include <cassert>

#include "MultiPlatformLib.h"

int main()
{
    constexpr int a = 5;
    constexpr int b = 6;
    const int sum = libAdd(a, b);

    assert(sum == a + b);

    std::cout << sum << std::endl;
}