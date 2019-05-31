all: cmake doxygen miktex astyle image_conversion qt5 opencv boost gitlab_runner

cmake:
	chmod +x cmake.sh;./cmake.sh

doxygen:
	chmod +x doxygen.sh;./doxygen.sh

miktex:
	chmod +x miktex.sh;./miktex.sh

astyle:
	chmod +x astyle.sh;./astyle.sh

qt5:
	chmod +x qt5.sh;./qt5.sh
	echo "Set Qt5_DIR variable"

opencv:
	chmod +x opencv.sh;./opencv.sh
	echo "Set OPENCV_DIR variable"

gitlab_runner:
	chmod +x gitlab-runner.sh;./gitlab-runner.sh

image_conversion:
	chmod +x image_conversion.sh;./image_conversion.sh

boost:
	chmod +x boost.sh;./boost.sh
	echo "Set BOOST_DIR variable"
