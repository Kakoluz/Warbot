# CMakeList.txt : CMake project for WarbotCMake, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)


# Add source to this project's executable.
set (SOURCES
	src/main.cpp
	src/Participant.cpp
	src/Team.cpp
	src/Controller.cpp
)

set (RESOURCES
	${PROJECT_SOURCE_DIR}/source/build/windows/resource.rc

)

# TODO: Add tests and install targets if needed.
add_executable ("Warbot" ${RESOURCES} ${SOURCES})

target_include_directories("Warbot"
    PRIVATE 
        ${PROJECT_SOURCE_DIR}/source/include
)