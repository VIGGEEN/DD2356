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
include CMakeFiles/blockingbinary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/blockingbinary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/blockingbinary.dir/flags.make

CMakeFiles/blockingbinary.dir/blockingbinary.cpp.o: CMakeFiles/blockingbinary.dir/flags.make
CMakeFiles/blockingbinary.dir/blockingbinary.cpp.o: ../blockingbinary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/blockingbinary.dir/blockingbinary.cpp.o"
	mpic++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/blockingbinary.dir/blockingbinary.cpp.o -c /home/viktorm/Git/DD2356/Assignment3/E2/blockingbinary.cpp

CMakeFiles/blockingbinary.dir/blockingbinary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blockingbinary.dir/blockingbinary.cpp.i"
	mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viktorm/Git/DD2356/Assignment3/E2/blockingbinary.cpp > CMakeFiles/blockingbinary.dir/blockingbinary.cpp.i

CMakeFiles/blockingbinary.dir/blockingbinary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blockingbinary.dir/blockingbinary.cpp.s"
	mpic++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viktorm/Git/DD2356/Assignment3/E2/blockingbinary.cpp -o CMakeFiles/blockingbinary.dir/blockingbinary.cpp.s

# Object files for target blockingbinary
blockingbinary_OBJECTS = \
"CMakeFiles/blockingbinary.dir/blockingbinary.cpp.o"

# External object files for target blockingbinary
blockingbinary_EXTERNAL_OBJECTS =

blockingbinary: CMakeFiles/blockingbinary.dir/blockingbinary.cpp.o
blockingbinary: CMakeFiles/blockingbinary.dir/build.make
blockingbinary: CMakeFiles/blockingbinary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable blockingbinary"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blockingbinary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/blockingbinary.dir/build: blockingbinary

.PHONY : CMakeFiles/blockingbinary.dir/build

CMakeFiles/blockingbinary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/blockingbinary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/blockingbinary.dir/clean

CMakeFiles/blockingbinary.dir/depend:
	cd /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viktorm/Git/DD2356/Assignment3/E2 /home/viktorm/Git/DD2356/Assignment3/E2 /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release /home/viktorm/Git/DD2356/Assignment3/E2/cmake-build-release/CMakeFiles/blockingbinary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/blockingbinary.dir/depend

