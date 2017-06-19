Installing Caja Admin from source
=====================================

1.  Install the dependencies.
    In Ubuntu and Debian, these are the known dependencies:

    *   cmake
    *   pluma *(optional)*
    *   gettext
    *   mate-terminal *(optional)*
    *   policykit-1
    *   caja-python

2.  Open a terminal in the project directory and run:

        mkdir build
        cd build
        cmake ..
        make
        sudo make install

3.  If Caja is running, restart it:

        caja -q

    Then start it again.
