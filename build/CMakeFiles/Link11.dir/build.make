# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\VS_code\cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\VS_code\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\hj\Desktop\link11_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\hj\Desktop\link11_project\build

# Include any dependencies generated for this target.
include CMakeFiles/Link11.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Link11.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Link11.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Link11.dir/flags.make

CMakeFiles/Link11.dir/codegen:
.PHONY : CMakeFiles/Link11.dir/codegen

CMakeFiles/Link11.dir/main.cpp.obj: CMakeFiles/Link11.dir/flags.make
CMakeFiles/Link11.dir/main.cpp.obj: C:/Users/hj/Desktop/link11_project/main.cpp
CMakeFiles/Link11.dir/main.cpp.obj: CMakeFiles/Link11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\hj\Desktop\link11_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Link11.dir/main.cpp.obj"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Link11.dir/main.cpp.obj -MF CMakeFiles\Link11.dir\main.cpp.obj.d -o CMakeFiles\Link11.dir\main.cpp.obj -c C:\Users\hj\Desktop\link11_project\main.cpp

CMakeFiles/Link11.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Link11.dir/main.cpp.i"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\hj\Desktop\link11_project\main.cpp > CMakeFiles\Link11.dir\main.cpp.i

CMakeFiles/Link11.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Link11.dir/main.cpp.s"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\hj\Desktop\link11_project\main.cpp -o CMakeFiles\Link11.dir\main.cpp.s

CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj: CMakeFiles/Link11.dir/flags.make
CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj: C:/Users/hj/Desktop/link11_project/src/encode_hamming.cpp
CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj: CMakeFiles/Link11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\hj\Desktop\link11_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj -MF CMakeFiles\Link11.dir\src\encode_hamming.cpp.obj.d -o CMakeFiles\Link11.dir\src\encode_hamming.cpp.obj -c C:\Users\hj\Desktop\link11_project\src\encode_hamming.cpp

CMakeFiles/Link11.dir/src/encode_hamming.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Link11.dir/src/encode_hamming.cpp.i"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\hj\Desktop\link11_project\src\encode_hamming.cpp > CMakeFiles\Link11.dir\src\encode_hamming.cpp.i

CMakeFiles/Link11.dir/src/encode_hamming.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Link11.dir/src/encode_hamming.cpp.s"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\hj\Desktop\link11_project\src\encode_hamming.cpp -o CMakeFiles\Link11.dir\src\encode_hamming.cpp.s

CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj: CMakeFiles/Link11.dir/flags.make
CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj: C:/Users/hj/Desktop/link11_project/src/mod_dqpsk.cpp
CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj: CMakeFiles/Link11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\hj\Desktop\link11_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj -MF CMakeFiles\Link11.dir\src\mod_dqpsk.cpp.obj.d -o CMakeFiles\Link11.dir\src\mod_dqpsk.cpp.obj -c C:\Users\hj\Desktop\link11_project\src\mod_dqpsk.cpp

CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.i"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\hj\Desktop\link11_project\src\mod_dqpsk.cpp > CMakeFiles\Link11.dir\src\mod_dqpsk.cpp.i

CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.s"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\hj\Desktop\link11_project\src\mod_dqpsk.cpp -o CMakeFiles\Link11.dir\src\mod_dqpsk.cpp.s

CMakeFiles/Link11.dir/src/files_opration.cpp.obj: CMakeFiles/Link11.dir/flags.make
CMakeFiles/Link11.dir/src/files_opration.cpp.obj: C:/Users/hj/Desktop/link11_project/src/files_opration.cpp
CMakeFiles/Link11.dir/src/files_opration.cpp.obj: CMakeFiles/Link11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\hj\Desktop\link11_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Link11.dir/src/files_opration.cpp.obj"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Link11.dir/src/files_opration.cpp.obj -MF CMakeFiles\Link11.dir\src\files_opration.cpp.obj.d -o CMakeFiles\Link11.dir\src\files_opration.cpp.obj -c C:\Users\hj\Desktop\link11_project\src\files_opration.cpp

CMakeFiles/Link11.dir/src/files_opration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Link11.dir/src/files_opration.cpp.i"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\hj\Desktop\link11_project\src\files_opration.cpp > CMakeFiles\Link11.dir\src\files_opration.cpp.i

CMakeFiles/Link11.dir/src/files_opration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Link11.dir/src/files_opration.cpp.s"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\hj\Desktop\link11_project\src\files_opration.cpp -o CMakeFiles\Link11.dir\src\files_opration.cpp.s

CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj: CMakeFiles/Link11.dir/flags.make
CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj: C:/Users/hj/Desktop/link11_project/src/doppler_correction.cpp
CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj: CMakeFiles/Link11.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\hj\Desktop\link11_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj -MF CMakeFiles\Link11.dir\src\doppler_correction.cpp.obj.d -o CMakeFiles\Link11.dir\src\doppler_correction.cpp.obj -c C:\Users\hj\Desktop\link11_project\src\doppler_correction.cpp

CMakeFiles/Link11.dir/src/doppler_correction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Link11.dir/src/doppler_correction.cpp.i"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\hj\Desktop\link11_project\src\doppler_correction.cpp > CMakeFiles\Link11.dir\src\doppler_correction.cpp.i

CMakeFiles/Link11.dir/src/doppler_correction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Link11.dir/src/doppler_correction.cpp.s"
	D:\VS_code\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\hj\Desktop\link11_project\src\doppler_correction.cpp -o CMakeFiles\Link11.dir\src\doppler_correction.cpp.s

# Object files for target Link11
Link11_OBJECTS = \
"CMakeFiles/Link11.dir/main.cpp.obj" \
"CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj" \
"CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj" \
"CMakeFiles/Link11.dir/src/files_opration.cpp.obj" \
"CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj"

# External object files for target Link11
Link11_EXTERNAL_OBJECTS =

Link11.exe: CMakeFiles/Link11.dir/main.cpp.obj
Link11.exe: CMakeFiles/Link11.dir/src/encode_hamming.cpp.obj
Link11.exe: CMakeFiles/Link11.dir/src/mod_dqpsk.cpp.obj
Link11.exe: CMakeFiles/Link11.dir/src/files_opration.cpp.obj
Link11.exe: CMakeFiles/Link11.dir/src/doppler_correction.cpp.obj
Link11.exe: CMakeFiles/Link11.dir/build.make
Link11.exe: CMakeFiles/Link11.dir/linkLibs.rsp
Link11.exe: CMakeFiles/Link11.dir/objects1.rsp
Link11.exe: CMakeFiles/Link11.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\hj\Desktop\link11_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Link11.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Link11.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Link11.dir/build: Link11.exe
.PHONY : CMakeFiles/Link11.dir/build

CMakeFiles/Link11.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Link11.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Link11.dir/clean

CMakeFiles/Link11.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\hj\Desktop\link11_project C:\Users\hj\Desktop\link11_project C:\Users\hj\Desktop\link11_project\build C:\Users\hj\Desktop\link11_project\build C:\Users\hj\Desktop\link11_project\build\CMakeFiles\Link11.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Link11.dir/depend

