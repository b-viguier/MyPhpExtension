#
# This file is copied from PHP-CPP project, with some settings dedicated
# to this project. See comments in original file for more informations.
#

ROOT_FOLDER			=   PHP-CPP
BUILD_FOLDER			=   build

PHP_CONFIG				=	php-config
PHP_BIN				=	$(shell ${PHP_CONFIG} --php-binary)

PHP_STATIC_LIBRARY	=	${BUILD_FOLDER}/libphpcpp.a

COMPILER				=	g++
LINKER					=	g++
ARCHIVER				=	ar rcs

COMPILER_FLAGS		=	-Wall -c -g -std=c++11
STATIC_COMPILER_FLAGS	=   -fPIC
PHP_COMPILER_FLAGS	=	${COMPILER_FLAGS} `${PHP_CONFIG} --includes`

LINKER_FLAGS			=	-shared
PHP_LINKER_FLAGS		=	${LINKER_FLAGS} `${PHP_CONFIG} --ldflags`

RM						=	rm -fr
CP						=	cp -f
MKDIR					=	mkdir -p

COMMON_SOURCES		=	$(wildcard ${ROOT_FOLDER}/common/*.cpp)
PHP_SOURCES			=	$(wildcard ${ROOT_FOLDER}/zend/*.cpp)

COMMON_STATIC_OBJECTS	=	$(COMMON_SOURCES:${ROOT_FOLDER}/%.cpp=${BUILD_FOLDER}/static/%.o)
PHP_STATIC_OBJECTS	=	$(PHP_SOURCES:${ROOT_FOLDER}/%.cpp=${BUILD_FOLDER}/static/%.o)


#
#   End of the variables section. Here starts the list of instructions and
#   dependencies that are used by the compiler.
#

all: phpcpp

phpcpp: ${PHP_STATIC_LIBRARY}
	@echo
	@echo "Build complete."

${PHP_STATIC_LIBRARY}: static_directories ${COMMON_STATIC_OBJECTS} ${PHP_STATIC_OBJECTS}
	${ARCHIVER} $@ ${COMMON_STATIC_OBJECTS} ${PHP_STATIC_OBJECTS}

static_directories:
	${MKDIR} ${BUILD_FOLDER}/static/common
	${MKDIR} ${BUILD_FOLDER}/static/zend

clean:
	${RM} ${BUILD_FOLDER}/static ${PHP_STATIC_LIBRARY}
	find -name *.o | xargs ${RM}

${COMMON_STATIC_OBJECTS}: 
	${COMPILER} ${COMPILER_FLAGS} ${STATIC_COMPILER_FLAGS} -o $@ ${@:${BUILD_FOLDER}/static/%.o=${ROOT_FOLDER}/%.cpp}

${PHP_STATIC_OBJECTS}: 
	${COMPILER} ${PHP_COMPILER_FLAGS} ${STATIC_COMPILER_FLAGS} -o $@ ${@:${BUILD_FOLDER}/static/%.o=${ROOT_FOLDER}/%.cpp}

