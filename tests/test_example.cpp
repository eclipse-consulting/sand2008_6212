#include <catch2/catch.hpp>
#include "example.h"

TEST_CASE("Example test", "[example]") {
    REQUIRE(example_function() == expected_value);
}

