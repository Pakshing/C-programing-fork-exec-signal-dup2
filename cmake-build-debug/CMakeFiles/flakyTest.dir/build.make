# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/flakyTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/flakyTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/flakyTest.dir/flags.make

CMakeFiles/flakyTest.dir/library.c.o: CMakeFiles/flakyTest.dir/flags.make
CMakeFiles/flakyTest.dir/library.c.o: ../library.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/flakyTest.dir/library.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/flakyTest.dir/library.c.o   -c /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/library.c

CMakeFiles/flakyTest.dir/library.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flakyTest.dir/library.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/library.c > CMakeFiles/flakyTest.dir/library.c.i

CMakeFiles/flakyTest.dir/library.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flakyTest.dir/library.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/library.c -o CMakeFiles/flakyTest.dir/library.c.s

# Object files for target flakyTest
flakyTest_OBJECTS = \
"CMakeFiles/flakyTest.dir/library.c.o"

# External object files for target flakyTest
flakyTest_EXTERNAL_OBJECTS =

libflakyTest.a: CMakeFiles/flakyTest.dir/library.c.o
libflakyTest.a: CMakeFiles/flakyTest.dir/build.make
libflakyTest.a: CMakeFiles/flakyTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libflakyTest.a"
	$(CMAKE_COMMAND) -P CMakeFiles/flakyTest.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flakyTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/flakyTest.dir/build: libflakyTest.a

.PHONY : CMakeFiles/flakyTest.dir/build

CMakeFiles/flakyTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/flakyTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/flakyTest.dir/clean

CMakeFiles/flakyTest.dir/depend:
	cd /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug /Users/pakshingkan/Desktop/FALL2020/CS149/Code/flakyTest/cmake-build-debug/CMakeFiles/flakyTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/flakyTest.dir/depend
