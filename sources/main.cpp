#include <pch.hpp>
#include <fmt/format.h>
#include <SFML/System/Time.hpp>

int main()
{
    if (__cplusplus >= 202100L) ::std::cout << "C++23(" << __cplusplus << ")\n";
    else if (__cplusplus >= 202002L) ::std::cout << "C++20(" << __cplusplus << ")\n";
    else if (__cplusplus >= 201703L) ::std::cout << "C++17(" << __cplusplus << ")\n";
    else if (__cplusplus >= 201402L) ::std::cout << "C++14(" << __cplusplus << ")\n";
    else if (__cplusplus >= 201103L) ::std::cout << "C++11(" << __cplusplus << ")\n";
    else if (__cplusplus >= 199711L) ::std::cout << "C++98(" << __cplusplus << ")\n";
    else ::std::cout << "pre-standard C++\n";
    ::sf::Time t{ ::sf::microseconds(10000) };
    return 0;
}
