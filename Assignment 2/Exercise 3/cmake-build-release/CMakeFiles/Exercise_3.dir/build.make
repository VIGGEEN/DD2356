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
CMAKE_SOURCE_DIR = "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release"

# Include any dependencies generated for this target.
include CMakeFiles/Exercise_3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Exercise_3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Exercise_3.dir/flags.make

CMakeFiles/Exercise_3.dir/main.cpp.o: CMakeFiles/Exercise_3.dir/flags.make
CMakeFiles/Exercise_3.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Exercise_3.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Exercise_3.dir/main.cpp.o -c "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/main.cpp"

CMakeFiles/Exercise_3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Exercise_3.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/main.cpp" > CMakeFiles/Exercise_3.dir/main.cpp.i

CMakeFiles/Exercise_3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Exercise_3.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/main.cpp" -o CMakeFiles/Exercise_3.dir/main.cpp.s

# Object files for target Exercise_3
Exercise_3_OBJECTS = \
"CMakeFiles/Exercise_3.dir/main.cpp.o"

# External object files for target Exercise_3
Exercise_3_EXTERNAL_OBJECTS =

Exercise_3: CMakeFiles/Exercise_3.dir/main.cpp.o
Exercise_3: CMakeFiles/Exercise_3.dir/build.make
Exercise_3: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
Exercise_3: /usr/lib/x86_64-linux-gnu/libpthread.so
Exercise_3: CMakeFiles/Exercise_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Exercise_3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Exercise_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Exercise_3.dir/build: Exercise_3

.PHONY : CMakeFiles/Exercise_3.dir/build

CMakeFiles/Exercise_3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Exercise_3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Exercise_3.dir/clean

CMakeFiles/Exercise_3.dir/depend:
	cd "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release" "/home/viktorm/Git/DD2356/Assignment 2/Exercise 3/cmake-build-release/CMakeFiles/Exercise_3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Exercise_3.dir/depend

