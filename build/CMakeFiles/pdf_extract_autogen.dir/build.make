# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/thomas/1. Projects/PDF_Extract"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/thomas/1. Projects/PDF_Extract/build"

# Utility rule file for pdf_extract_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/pdf_extract_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pdf_extract_autogen.dir/progress.make

CMakeFiles/pdf_extract_autogen: pdf_extract_autogen/timestamp

pdf_extract_autogen/timestamp: /usr/lib/qt6/moc
pdf_extract_autogen/timestamp: CMakeFiles/pdf_extract_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="/home/thomas/1. Projects/PDF_Extract/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target pdf_extract"
	/usr/bin/cmake -E cmake_autogen "/home/thomas/1. Projects/PDF_Extract/build/CMakeFiles/pdf_extract_autogen.dir/AutogenInfo.json" Debug
	/usr/bin/cmake -E touch "/home/thomas/1. Projects/PDF_Extract/build/pdf_extract_autogen/timestamp"

CMakeFiles/pdf_extract_autogen.dir/codegen:
.PHONY : CMakeFiles/pdf_extract_autogen.dir/codegen

pdf_extract_autogen: CMakeFiles/pdf_extract_autogen
pdf_extract_autogen: pdf_extract_autogen/timestamp
pdf_extract_autogen: CMakeFiles/pdf_extract_autogen.dir/build.make
.PHONY : pdf_extract_autogen

# Rule to build all files generated by this target.
CMakeFiles/pdf_extract_autogen.dir/build: pdf_extract_autogen
.PHONY : CMakeFiles/pdf_extract_autogen.dir/build

CMakeFiles/pdf_extract_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pdf_extract_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pdf_extract_autogen.dir/clean

CMakeFiles/pdf_extract_autogen.dir/depend:
	cd "/home/thomas/1. Projects/PDF_Extract/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/thomas/1. Projects/PDF_Extract" "/home/thomas/1. Projects/PDF_Extract" "/home/thomas/1. Projects/PDF_Extract/build" "/home/thomas/1. Projects/PDF_Extract/build" "/home/thomas/1. Projects/PDF_Extract/build/CMakeFiles/pdf_extract_autogen.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/pdf_extract_autogen.dir/depend

