# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/alber/source/repos/WarbotCMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux

# Include any dependencies generated for this target.
include source/CMakeFiles/Warbot.dir/depend.make

# Include the progress variables for this target.
include source/CMakeFiles/Warbot.dir/progress.make

# Include the compile flags for this target's objects.
include source/CMakeFiles/Warbot.dir/flags.make

source/CMakeFiles/Warbot.dir/src/main.cpp.o: source/CMakeFiles/Warbot.dir/flags.make
source/CMakeFiles/Warbot.dir/src/main.cpp.o: ../../../source/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/CMakeFiles/Warbot.dir/src/main.cpp.o"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Warbot.dir/src/main.cpp.o -c /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/main.cpp

source/CMakeFiles/Warbot.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Warbot.dir/src/main.cpp.i"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/main.cpp > CMakeFiles/Warbot.dir/src/main.cpp.i

source/CMakeFiles/Warbot.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Warbot.dir/src/main.cpp.s"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/main.cpp -o CMakeFiles/Warbot.dir/src/main.cpp.s

source/CMakeFiles/Warbot.dir/src/main.cpp.o.requires:

.PHONY : source/CMakeFiles/Warbot.dir/src/main.cpp.o.requires

source/CMakeFiles/Warbot.dir/src/main.cpp.o.provides: source/CMakeFiles/Warbot.dir/src/main.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/Warbot.dir/build.make source/CMakeFiles/Warbot.dir/src/main.cpp.o.provides.build
.PHONY : source/CMakeFiles/Warbot.dir/src/main.cpp.o.provides

source/CMakeFiles/Warbot.dir/src/main.cpp.o.provides.build: source/CMakeFiles/Warbot.dir/src/main.cpp.o


source/CMakeFiles/Warbot.dir/src/Participant.cpp.o: source/CMakeFiles/Warbot.dir/flags.make
source/CMakeFiles/Warbot.dir/src/Participant.cpp.o: ../../../source/src/Participant.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object source/CMakeFiles/Warbot.dir/src/Participant.cpp.o"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Warbot.dir/src/Participant.cpp.o -c /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Participant.cpp

source/CMakeFiles/Warbot.dir/src/Participant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Warbot.dir/src/Participant.cpp.i"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Participant.cpp > CMakeFiles/Warbot.dir/src/Participant.cpp.i

source/CMakeFiles/Warbot.dir/src/Participant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Warbot.dir/src/Participant.cpp.s"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Participant.cpp -o CMakeFiles/Warbot.dir/src/Participant.cpp.s

source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.requires:

.PHONY : source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.requires

source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.provides: source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/Warbot.dir/build.make source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.provides.build
.PHONY : source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.provides

source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.provides.build: source/CMakeFiles/Warbot.dir/src/Participant.cpp.o


source/CMakeFiles/Warbot.dir/src/Team.cpp.o: source/CMakeFiles/Warbot.dir/flags.make
source/CMakeFiles/Warbot.dir/src/Team.cpp.o: ../../../source/src/Team.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object source/CMakeFiles/Warbot.dir/src/Team.cpp.o"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Warbot.dir/src/Team.cpp.o -c /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Team.cpp

source/CMakeFiles/Warbot.dir/src/Team.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Warbot.dir/src/Team.cpp.i"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Team.cpp > CMakeFiles/Warbot.dir/src/Team.cpp.i

source/CMakeFiles/Warbot.dir/src/Team.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Warbot.dir/src/Team.cpp.s"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Team.cpp -o CMakeFiles/Warbot.dir/src/Team.cpp.s

source/CMakeFiles/Warbot.dir/src/Team.cpp.o.requires:

.PHONY : source/CMakeFiles/Warbot.dir/src/Team.cpp.o.requires

source/CMakeFiles/Warbot.dir/src/Team.cpp.o.provides: source/CMakeFiles/Warbot.dir/src/Team.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/Warbot.dir/build.make source/CMakeFiles/Warbot.dir/src/Team.cpp.o.provides.build
.PHONY : source/CMakeFiles/Warbot.dir/src/Team.cpp.o.provides

source/CMakeFiles/Warbot.dir/src/Team.cpp.o.provides.build: source/CMakeFiles/Warbot.dir/src/Team.cpp.o


source/CMakeFiles/Warbot.dir/src/Controller.cpp.o: source/CMakeFiles/Warbot.dir/flags.make
source/CMakeFiles/Warbot.dir/src/Controller.cpp.o: ../../../source/src/Controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object source/CMakeFiles/Warbot.dir/src/Controller.cpp.o"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Warbot.dir/src/Controller.cpp.o -c /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Controller.cpp

source/CMakeFiles/Warbot.dir/src/Controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Warbot.dir/src/Controller.cpp.i"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Controller.cpp > CMakeFiles/Warbot.dir/src/Controller.cpp.i

source/CMakeFiles/Warbot.dir/src/Controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Warbot.dir/src/Controller.cpp.s"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/alber/source/repos/WarbotCMake/source/src/Controller.cpp -o CMakeFiles/Warbot.dir/src/Controller.cpp.s

source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.requires:

.PHONY : source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.requires

source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.provides: source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/Warbot.dir/build.make source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.provides.build
.PHONY : source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.provides

source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.provides.build: source/CMakeFiles/Warbot.dir/src/Controller.cpp.o


# Object files for target Warbot
Warbot_OBJECTS = \
"CMakeFiles/Warbot.dir/src/main.cpp.o" \
"CMakeFiles/Warbot.dir/src/Participant.cpp.o" \
"CMakeFiles/Warbot.dir/src/Team.cpp.o" \
"CMakeFiles/Warbot.dir/src/Controller.cpp.o"

# External object files for target Warbot
Warbot_EXTERNAL_OBJECTS =

source/Warbot: source/CMakeFiles/Warbot.dir/src/main.cpp.o
source/Warbot: source/CMakeFiles/Warbot.dir/src/Participant.cpp.o
source/Warbot: source/CMakeFiles/Warbot.dir/src/Team.cpp.o
source/Warbot: source/CMakeFiles/Warbot.dir/src/Controller.cpp.o
source/Warbot: source/CMakeFiles/Warbot.dir/build.make
source/Warbot: source/CMakeFiles/Warbot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Warbot"
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Warbot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/CMakeFiles/Warbot.dir/build: source/Warbot

.PHONY : source/CMakeFiles/Warbot.dir/build

source/CMakeFiles/Warbot.dir/requires: source/CMakeFiles/Warbot.dir/src/main.cpp.o.requires
source/CMakeFiles/Warbot.dir/requires: source/CMakeFiles/Warbot.dir/src/Participant.cpp.o.requires
source/CMakeFiles/Warbot.dir/requires: source/CMakeFiles/Warbot.dir/src/Team.cpp.o.requires
source/CMakeFiles/Warbot.dir/requires: source/CMakeFiles/Warbot.dir/src/Controller.cpp.o.requires

.PHONY : source/CMakeFiles/Warbot.dir/requires

source/CMakeFiles/Warbot.dir/clean:
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source && $(CMAKE_COMMAND) -P CMakeFiles/Warbot.dir/cmake_clean.cmake
.PHONY : source/CMakeFiles/Warbot.dir/clean

source/CMakeFiles/Warbot.dir/depend:
	cd /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/alber/source/repos/WarbotCMake /mnt/c/Users/alber/source/repos/WarbotCMake/source /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source /mnt/c/Users/alber/source/repos/WarbotCMake/out/build/Linux/source/CMakeFiles/Warbot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/CMakeFiles/Warbot.dir/depend
