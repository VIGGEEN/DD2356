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
CMAKE_COMMAND = /snap/clion/111/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/111/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release"

# Include any dependencies generated for this target.
include CMakeFiles/Exercise_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Exercise_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Exercise_2.dir/flags.make

CMakeFiles/Exercise_2.dir/stream.cpp.o: CMakeFiles/Exercise_2.dir/flags.make
CMakeFiles/Exercise_2.dir/stream.cpp.o: ../stream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Exercise_2.dir/stream.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Exercise_2.dir/stream.cpp.o -c "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/stream.cpp"

CMakeFiles/Exercise_2.dir/stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Exercise_2.dir/stream.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/stream.cpp" > CMakeFiles/Exercise_2.dir/stream.cpp.i

CMakeFiles/Exercise_2.dir/stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Exercise_2.dir/stream.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/stream.cpp" -o CMakeFiles/Exercise_2.dir/stream.cpp.s

# Object files for target Exercise_2
Exercise_2_OBJECTS = \
"CMakeFiles/Exercise_2.dir/stream.cpp.o"

# External object files for target Exercise_2
Exercise_2_EXTERNAL_OBJECTS =

Exercise_2: CMakeFiles/Exercise_2.dir/stream.cpp.o
Exercise_2: CMakeFiles/Exercise_2.dir/build.make
Exercise_2: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
Exercise_2: /usr/lib/x86_64-linux-gnu/libpthread.so
Exercise_2: CMakeFiles/Exercise_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Exercise_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Exercise_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Exercise_2.dir/build: Exercise_2

.PHONY : CMakeFiles/Exercise_2.dir/build

CMakeFiles/Exercise_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Exercise_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Exercise_2.dir/clean

CMakeFiles/Exercise_2.dir/depend:
	cd "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 2/cmake-build-release/CMakeFiles/Exercise_2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Exercise_2.dir/depend
