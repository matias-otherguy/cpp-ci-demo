#include <string>
#include "lib/catch.hpp"
#define private public
#include "member.hpp"


SCENARIO("Constructing a new Member", "[member-constructor]") {
  WHEN("constructing a Member without parameters") {
    Member m;
    THEN("the Member object has the name ??? and age 0") {
      REQUIRE_THAT(m.name, Catch::StartsWith(std::string("???")));
      REQUIRE((m.age == 0));
    }
  }
  WHEN("constructing a Member with parameters") {
    Member m(std::string("Valtteri Bottas"), 27);
    THEN("the Member object has the given name and age") {
      REQUIRE((m.name == std::string("Valtteri Bottas")));
      REQUIRE((m.age == 27));
    }
  }
}

