# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build

# Include any dependencies generated for this target.
include CMakeFiles/ensivideo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ensivideo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ensivideo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ensivideo.dir/flags.make

CMakeFiles/ensivideo.dir/src/ensivideo.c.o: CMakeFiles/ensivideo.dir/flags.make
CMakeFiles/ensivideo.dir/src/ensivideo.c.o: /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivideo.c
CMakeFiles/ensivideo.dir/src/ensivideo.c.o: CMakeFiles/ensivideo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ensivideo.dir/src/ensivideo.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ensivideo.dir/src/ensivideo.c.o -MF CMakeFiles/ensivideo.dir/src/ensivideo.c.o.d -o CMakeFiles/ensivideo.dir/src/ensivideo.c.o -c /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivideo.c

CMakeFiles/ensivideo.dir/src/ensivideo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ensivideo.dir/src/ensivideo.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivideo.c > CMakeFiles/ensivideo.dir/src/ensivideo.c.i

CMakeFiles/ensivideo.dir/src/ensivideo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ensivideo.dir/src/ensivideo.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivideo.c -o CMakeFiles/ensivideo.dir/src/ensivideo.c.s

CMakeFiles/ensivideo.dir/src/ensitheora.c.o: CMakeFiles/ensivideo.dir/flags.make
CMakeFiles/ensivideo.dir/src/ensitheora.c.o: /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensitheora.c
CMakeFiles/ensivideo.dir/src/ensitheora.c.o: CMakeFiles/ensivideo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ensivideo.dir/src/ensitheora.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ensivideo.dir/src/ensitheora.c.o -MF CMakeFiles/ensivideo.dir/src/ensitheora.c.o.d -o CMakeFiles/ensivideo.dir/src/ensitheora.c.o -c /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensitheora.c

CMakeFiles/ensivideo.dir/src/ensitheora.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ensivideo.dir/src/ensitheora.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensitheora.c > CMakeFiles/ensivideo.dir/src/ensitheora.c.i

CMakeFiles/ensivideo.dir/src/ensitheora.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ensivideo.dir/src/ensitheora.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensitheora.c -o CMakeFiles/ensivideo.dir/src/ensitheora.c.s

CMakeFiles/ensivideo.dir/src/ensivorbis.c.o: CMakeFiles/ensivideo.dir/flags.make
CMakeFiles/ensivideo.dir/src/ensivorbis.c.o: /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivorbis.c
CMakeFiles/ensivideo.dir/src/ensivorbis.c.o: CMakeFiles/ensivideo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ensivideo.dir/src/ensivorbis.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ensivideo.dir/src/ensivorbis.c.o -MF CMakeFiles/ensivideo.dir/src/ensivorbis.c.o.d -o CMakeFiles/ensivideo.dir/src/ensivorbis.c.o -c /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivorbis.c

CMakeFiles/ensivideo.dir/src/ensivorbis.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ensivideo.dir/src/ensivorbis.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivorbis.c > CMakeFiles/ensivideo.dir/src/ensivorbis.c.i

CMakeFiles/ensivideo.dir/src/ensivorbis.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ensivideo.dir/src/ensivorbis.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/ensivorbis.c -o CMakeFiles/ensivideo.dir/src/ensivorbis.c.s

CMakeFiles/ensivideo.dir/src/oggstream.c.o: CMakeFiles/ensivideo.dir/flags.make
CMakeFiles/ensivideo.dir/src/oggstream.c.o: /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/oggstream.c
CMakeFiles/ensivideo.dir/src/oggstream.c.o: CMakeFiles/ensivideo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ensivideo.dir/src/oggstream.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ensivideo.dir/src/oggstream.c.o -MF CMakeFiles/ensivideo.dir/src/oggstream.c.o.d -o CMakeFiles/ensivideo.dir/src/oggstream.c.o -c /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/oggstream.c

CMakeFiles/ensivideo.dir/src/oggstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ensivideo.dir/src/oggstream.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/oggstream.c > CMakeFiles/ensivideo.dir/src/oggstream.c.i

CMakeFiles/ensivideo.dir/src/oggstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ensivideo.dir/src/oggstream.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/oggstream.c -o CMakeFiles/ensivideo.dir/src/oggstream.c.s

CMakeFiles/ensivideo.dir/src/stream_common.c.o: CMakeFiles/ensivideo.dir/flags.make
CMakeFiles/ensivideo.dir/src/stream_common.c.o: /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/stream_common.c
CMakeFiles/ensivideo.dir/src/stream_common.c.o: CMakeFiles/ensivideo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/ensivideo.dir/src/stream_common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ensivideo.dir/src/stream_common.c.o -MF CMakeFiles/ensivideo.dir/src/stream_common.c.o.d -o CMakeFiles/ensivideo.dir/src/stream_common.c.o -c /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/stream_common.c

CMakeFiles/ensivideo.dir/src/stream_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ensivideo.dir/src/stream_common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/stream_common.c > CMakeFiles/ensivideo.dir/src/stream_common.c.i

CMakeFiles/ensivideo.dir/src/stream_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ensivideo.dir/src/stream_common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/stream_common.c -o CMakeFiles/ensivideo.dir/src/stream_common.c.s

CMakeFiles/ensivideo.dir/src/synchro.c.o: CMakeFiles/ensivideo.dir/flags.make
CMakeFiles/ensivideo.dir/src/synchro.c.o: /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/synchro.c
CMakeFiles/ensivideo.dir/src/synchro.c.o: CMakeFiles/ensivideo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/ensivideo.dir/src/synchro.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ensivideo.dir/src/synchro.c.o -MF CMakeFiles/ensivideo.dir/src/synchro.c.o.d -o CMakeFiles/ensivideo.dir/src/synchro.c.o -c /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/synchro.c

CMakeFiles/ensivideo.dir/src/synchro.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/ensivideo.dir/src/synchro.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/synchro.c > CMakeFiles/ensivideo.dir/src/synchro.c.i

CMakeFiles/ensivideo.dir/src/synchro.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/ensivideo.dir/src/synchro.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/src/synchro.c -o CMakeFiles/ensivideo.dir/src/synchro.c.s

# Object files for target ensivideo
ensivideo_OBJECTS = \
"CMakeFiles/ensivideo.dir/src/ensivideo.c.o" \
"CMakeFiles/ensivideo.dir/src/ensitheora.c.o" \
"CMakeFiles/ensivideo.dir/src/ensivorbis.c.o" \
"CMakeFiles/ensivideo.dir/src/oggstream.c.o" \
"CMakeFiles/ensivideo.dir/src/stream_common.c.o" \
"CMakeFiles/ensivideo.dir/src/synchro.c.o"

# External object files for target ensivideo
ensivideo_EXTERNAL_OBJECTS =

ensivideo: CMakeFiles/ensivideo.dir/src/ensivideo.c.o
ensivideo: CMakeFiles/ensivideo.dir/src/ensitheora.c.o
ensivideo: CMakeFiles/ensivideo.dir/src/ensivorbis.c.o
ensivideo: CMakeFiles/ensivideo.dir/src/oggstream.c.o
ensivideo: CMakeFiles/ensivideo.dir/src/stream_common.c.o
ensivideo: CMakeFiles/ensivideo.dir/src/synchro.c.o
ensivideo: CMakeFiles/ensivideo.dir/build.make
ensivideo: CMakeFiles/ensivideo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable ensivideo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ensivideo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ensivideo.dir/build: ensivideo
.PHONY : CMakeFiles/ensivideo.dir/build

CMakeFiles/ensivideo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ensivideo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ensivideo.dir/clean

CMakeFiles/ensivideo.dir/depend:
	cd /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build /home/kouadikj/ENSIMAG/2A-ISI/Semestre-1/SEPC/TP3-Thread/Ensimag-video/C/build/CMakeFiles/ensivideo.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ensivideo.dir/depend

