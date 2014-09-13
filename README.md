Hello World in x86_64 Assembly (NASM) for Mac OS X
===========================

Suitable for use as a starting-point for x86_64 NASM projects on OS X.

## Installing NASM

    git clone git://repo.or.cz/nasm.git
    brew install docbook asciidoc xmlto # not sure these are all needed, but at least one of them is
    ./configure CC="gcc-4.9"            # Specifying which compiler to use is optional
    make -j                             # -j with no args = use infinite jobs
    strip -x nasm ndisasm               # make strip doesn't work on OS X. (this step is optional)
    sudo make install

After this, `nasm -v` should give you something like `NASM version 2.11.05`

## Hello, World!

Just use the provided Makefile.

    make    # nasm -f macho64 -o ./test.o test.asm
            # ld test.o -o test -e _main -no_pie -macosx_version_min 10.9 -lSystem
