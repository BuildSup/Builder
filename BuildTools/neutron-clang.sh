#!/bin/bash
# fixed some path of glibch by zetaxbyte

mkdir neutron-clang && cd neutron-clang && curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman" && chmod a+x antman && ./antman -S && ./antman --patch=glibc && cd .. && ls 