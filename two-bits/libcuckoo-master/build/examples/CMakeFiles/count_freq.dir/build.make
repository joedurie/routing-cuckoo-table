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
CMAKE_SOURCE_DIR = /ilab/users/jrd266/libcuckoo-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /ilab/users/jrd266/libcuckoo-master/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/count_freq.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/count_freq.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/count_freq.dir/flags.make

examples/CMakeFiles/count_freq.dir/count_freq.cc.o: examples/CMakeFiles/count_freq.dir/flags.make
examples/CMakeFiles/count_freq.dir/count_freq.cc.o: ../examples/count_freq.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ilab/users/jrd266/libcuckoo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/count_freq.dir/count_freq.cc.o"
	cd /ilab/users/jrd266/libcuckoo-master/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/count_freq.dir/count_freq.cc.o -c /ilab/users/jrd266/libcuckoo-master/examples/count_freq.cc

examples/CMakeFiles/count_freq.dir/count_freq.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/count_freq.dir/count_freq.cc.i"
	cd /ilab/users/jrd266/libcuckoo-master/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ilab/users/jrd266/libcuckoo-master/examples/count_freq.cc > CMakeFiles/count_freq.dir/count_freq.cc.i

examples/CMakeFiles/count_freq.dir/count_freq.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/count_freq.dir/count_freq.cc.s"
	cd /ilab/users/jrd266/libcuckoo-master/build/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ilab/users/jrd266/libcuckoo-master/examples/count_freq.cc -o CMakeFiles/count_freq.dir/count_freq.cc.s

examples/CMakeFiles/count_freq.dir/count_freq.cc.o.requires:

.PHONY : examples/CMakeFiles/count_freq.dir/count_freq.cc.o.requires

examples/CMakeFiles/count_freq.dir/count_freq.cc.o.provides: examples/CMakeFiles/count_freq.dir/count_freq.cc.o.requires
	$(MAKE) -f examples/CMakeFiles/count_freq.dir/build.make examples/CMakeFiles/count_freq.dir/count_freq.cc.o.provides.build
.PHONY : examples/CMakeFiles/count_freq.dir/count_freq.cc.o.provides

examples/CMakeFiles/count_freq.dir/count_freq.cc.o.provides.build: examples/CMakeFiles/count_freq.dir/count_freq.cc.o


# Object files for target count_freq
count_freq_OBJECTS = \
"CMakeFiles/count_freq.dir/count_freq.cc.o"

# External object files for target count_freq
count_freq_EXTERNAL_OBJECTS =

examples/count_freq: examples/CMakeFiles/count_freq.dir/count_freq.cc.o
examples/count_freq: examples/CMakeFiles/count_freq.dir/build.make
examples/count_freq: examples/CMakeFiles/count_freq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/ilab/users/jrd266/libcuckoo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable count_freq"
	cd /ilab/users/jrd266/libcuckoo-master/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/count_freq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/count_freq.dir/build: examples/count_freq

.PHONY : examples/CMakeFiles/count_freq.dir/build

examples/CMakeFiles/count_freq.dir/requires: examples/CMakeFiles/count_freq.dir/count_freq.cc.o.requires

.PHONY : examples/CMakeFiles/count_freq.dir/requires

examples/CMakeFiles/count_freq.dir/clean:
	cd /ilab/users/jrd266/libcuckoo-master/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/count_freq.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/count_freq.dir/clean

examples/CMakeFiles/count_freq.dir/depend:
	cd /ilab/users/jrd266/libcuckoo-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /ilab/users/jrd266/libcuckoo-master /ilab/users/jrd266/libcuckoo-master/examples /ilab/users/jrd266/libcuckoo-master/build /ilab/users/jrd266/libcuckoo-master/build/examples /ilab/users/jrd266/libcuckoo-master/build/examples/CMakeFiles/count_freq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/count_freq.dir/depend

