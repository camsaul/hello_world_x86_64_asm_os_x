hello_world_x86_84_asm_os_x
===========================

* Install NASM `git://repo.or.cz/nasm.git`
* Install other dependencies (not sure all of these are needed, but at least one of them are) `brew install docbook asciidoc xmlto`
* `./autogen.sh`
* Configure. You don't have to specify which C compiler to use but I felt like using GCC 4.9 `./configure CC="gcc-4.9"`
* `make -j` 
* `make strip` doesn't work on OS X, you can do this instead:
    strip -x nasm
    strip -x ndisasm
* `sudo make install`
