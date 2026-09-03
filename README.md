# Sponge-Modern

This repository attempts to build SpongeBob SquarePants: SuperSponge with a modern development environment.

This is very much a work in progress!! The system may not function as intended right out of the box.

# Building

Follow the toolchain installation instructions for your OS [here](https://github.com/ABelliqueux/nolibgs_hello_worlds)

Install [mkpsxiso](https://github.com/lameguy64/mkpsxiso) for your OS (just drop the executables in ``/usr/bin`` or wherever)

Clone the repository RECURSIVELY!

Drop your CD copy in ``disc`` and rename the .cue to ``spongebob.REGION.cue`` (where REGION is either USA or EUR depending on your copy's region)

Run ``make all`` to build everything

# Notes

Currently, this is not an attempt at a perfectly matching build - there will be differences in assembly, but focus is on identical functionality and function addresses.
