#include <iostream>
#include "member.hpp"

void Member::printInfo() const {
  std::cout << "Member: " << name << ", age: " << age << std::endl;
}

