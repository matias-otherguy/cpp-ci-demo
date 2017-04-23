#ifndef MEMBER_H
#define MEMBER_H
#include <string>

class Member {
  public:
    Member()
      : Member("???", 0) {};
    Member(const std::string init_name, const unsigned int init_age)
      : name(init_name),
        age(init_age) {};
    void printInfo() const;
  private:
    const std::string name;
    const unsigned int age;
};

#endif // MEMBER_H
