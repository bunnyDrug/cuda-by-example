# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Don\CLionProjects\cuda-by-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\cuda_by_example.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\cuda_by_example.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\cuda_by_example.dir\flags.make

CMakeFiles\cuda_by_example.dir\main.cu.obj: CMakeFiles\cuda_by_example.dir\flags.make
CMakeFiles\cuda_by_example.dir\main.cu.obj: ..\main.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/cuda_by_example.dir/main.cu.obj"
	C:\PROGRA~1\NVIDIA~2\CUDA\v11.3\bin\nvcc.exe -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -dc C:\Users\Don\CLionProjects\cuda-by-example\main.cu -o CMakeFiles\cuda_by_example.dir\main.cu.obj -Xcompiler=-FdCMakeFiles\cuda_by_example.dir\,-FS

CMakeFiles\cuda_by_example.dir\main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuda_by_example.dir/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles\cuda_by_example.dir\main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuda_by_example.dir/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cuda_by_example
cuda_by_example_OBJECTS = \
"CMakeFiles\cuda_by_example.dir\main.cu.obj"

# External object files for target cuda_by_example
cuda_by_example_EXTERNAL_OBJECTS =

CMakeFiles\cuda_by_example.dir\cmake_device_link.obj: CMakeFiles\cuda_by_example.dir\main.cu.obj
CMakeFiles\cuda_by_example.dir\cmake_device_link.obj: CMakeFiles\cuda_by_example.dir\build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA device code CMakeFiles\cuda_by_example.dir\cmake_device_link.obj"
	C:\PROGRA~1\NVIDIA~2\CUDA\v11.3\bin\nvcc.exe -forward-unknown-to-host-compiler -D_WINDOWS -Xcompiler=" /GR /EHsc" -Xcompiler="-Zi -Ob0 -Od /RTC1" --generate-code=arch=compute_52,code=[compute_52,sm_52] -Xcompiler=-MDd -Wno-deprecated-gpu-targets -shared -dlink $(cuda_by_example_OBJECTS) $(cuda_by_example_EXTERNAL_OBJECTS) -o CMakeFiles\cuda_by_example.dir\cmake_device_link.obj  cudadevrt.lib cudart_static.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib  -Xcompiler=-FdC:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug\CMakeFiles\cuda_by_example.dir\,-FS

# Rule to build all files generated by this target.
CMakeFiles\cuda_by_example.dir\build: CMakeFiles\cuda_by_example.dir\cmake_device_link.obj

.PHONY : CMakeFiles\cuda_by_example.dir\build

# Object files for target cuda_by_example
cuda_by_example_OBJECTS = \
"CMakeFiles\cuda_by_example.dir\main.cu.obj"

# External object files for target cuda_by_example
cuda_by_example_EXTERNAL_OBJECTS =

cuda_by_example.exe: CMakeFiles\cuda_by_example.dir\main.cu.obj
cuda_by_example.exe: CMakeFiles\cuda_by_example.dir\build.make
cuda_by_example.exe: CMakeFiles\cuda_by_example.dir\cmake_device_link.obj
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CUDA executable cuda_by_example.exe"
	"C:\Program Files\JetBrains\CLion 2021.1.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\cuda_by_example.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\HostX64\x64\link.exe /nologo $(cuda_by_example_OBJECTS) $(cuda_by_example_EXTERNAL_OBJECTS) CMakeFiles\cuda_by_example.dir\cmake_device_link.obj @<<
 /out:cuda_by_example.exe /implib:cuda_by_example.lib /pdb:C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug\cuda_by_example.pdb /version:0.0 /debug /INCREMENTAL /subsystem:console  cudadevrt.lib cudart_static.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib  -LIBPATH:"C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.3/lib/x64" 
<<

# Rule to build all files generated by this target.
CMakeFiles\cuda_by_example.dir\build: cuda_by_example.exe

.PHONY : CMakeFiles\cuda_by_example.dir\build

CMakeFiles\cuda_by_example.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cuda_by_example.dir\cmake_clean.cmake
.PHONY : CMakeFiles\cuda_by_example.dir\clean

CMakeFiles\cuda_by_example.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Don\CLionProjects\cuda-by-example C:\Users\Don\CLionProjects\cuda-by-example C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug C:\Users\Don\CLionProjects\cuda-by-example\cmake-build-debug\CMakeFiles\cuda_by_example.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\cuda_by_example.dir\depend

