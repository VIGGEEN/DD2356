# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /snap/clion/112/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/112/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viktorm/Git/DD2356/Assignment3/E2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/nblockinglinear.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nblockinglinear.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nblockinglinear.dir/flags.make

CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.o: CMakeFiles/nblockinglinear.dir/flags.make
CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.o: ../nblockinglinear.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.o"
	mpic++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.o -c /home/viktorm/Git/DD2356/Assignment3/E2/nblockinglinear.cpp

CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.i"
	mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viktorm/Git/DD2356/Assignment3/E2/nblockinglinear.cpp > CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.i

CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.s"
	mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viktorm/Git/DD2356/Assignment3/E2/nblockinglinear.cpp -o CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.s

# Object files for target nblockinglinear
nblockinglinear_OBJECTS = \
"CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.o"

# External object files for target nblockinglinear
nblockinglinear_EXTERNAL_OBJECTS =

nblockinglinear: CMakeFiles/nblockinglinear.dir/nblockinglinear.cpp.o
nblockinglinear: CMakeFiles/nblockinglinear.dir/build.make
nblockinglinear: CMakeFiles/nblockinglinear.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nblockinglinear"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nblockinglinear.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nblockinglinear.dir/build: nblockinglinear

.PHONY : CMakeFiles/nblockinglinear.dir/build

CMakeFiles/nblockinglinear.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nblockinglinear.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nblockinglinear.dir/clean

CMakeFiles/nblockinglinear.dir/depend:
	cd /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viktorm/Git/DD2356/Assignment3/E2 /home/viktorm/Git/DD2356/Assignment3/E2 /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release/CMakeFiles/nblockinglinear.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nblockinglinear.dir/depend

