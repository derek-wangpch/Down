#!/bin/sh

re2c -W -Werror --case-insensitive -b -i --no-generation-date -8 --encoding-policy substitute -o scanners.c scanners.re
