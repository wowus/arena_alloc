#!/bin/bash
# Usage: CC=gcc ./build.sh | CC=clang ./build.sh etc, etc.

$CC -DNDEBUG -Wall -Wextra -Werror -pipe -pedantic -std=c99 -DFORTIFY_SOURCE=2 -O3 -march=native -c arena.c
clang --analyze -DDEBUG -std=c99 -Wall -Wextra -Werror -pipe -pedantic arena.c
