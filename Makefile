all: cmake doxygen miktex qt5 opencv boost gitlab_runner

cmake:
	chmod +x cmake.sh;./cmake.sh

doxygen:
	chmod +x doxygen.sh;./doxygen.sh

miktex:
	chmod +x miktex.sh;./miktex.sh

astyle:
	chmod +x astyle.sh;./astyle.sh

# Not yet successfully tested
qt5:
	chmod +x qt5.sh;./qt5.sh

opencv:
	chmod +x opencv.sh;./opencv.sh

# Not yet successfully tested
boost:
	chmod +x boost.sh;./boost.sh

# Not yet successfully tested
gitlab_runner:
	chmod +x gitlab-runner.sh;./gitlab-runner.sh

# WHICH VARIABLES NEED TO BE SET FOR CMAKE?
# WRITE DOWN IN ONE SCRIPT / README!
