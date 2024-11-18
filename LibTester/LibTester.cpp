#include <iostream>
#include <cassert>

#include "MultiPlatformLib.h"

int main()
{
    int a, b;
    std::cout << "Enter a: ";
    std::cin >> a;
    std::cout << "Enter b: ";
    std::cin >> b;

    const int sum = libAdd(a, b);

    assert(sum == a + b);

    std::cout << "Sum: " << sum << std::endl;
}