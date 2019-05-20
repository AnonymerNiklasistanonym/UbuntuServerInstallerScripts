all: cmake doxygen miktex

cmake : chmod+x cmake.sh;./cmake.sh

doxygen : chmod+x doxygen.sh;./doxygen.sh

miktex : chmod+x miktex.sh;./miktex.sh

qt5 : chmod+x qt5.sh;./qt5.sh
