project(darling)

cmake_minimum_required(VERSION 3.0)
set(DARLING_TOP_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}")
set(CMAKE_C_IMPLICIT_LINK_LIBRARIES "")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "")

# --as-needed breaks Darling
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--no-as-needed")

enable_language(ASM-ATT)

option(FRAMEWORK_COREAUDIO "Enable audio-related functionality" OFF)
option(FRAMEWORK_APPKIT "Enable AppKit development code" OFF)

add_subdirectory(src)

install(FILES etc/dylib.conf etc/version.conf
	DESTINATION libexec/darling/etc/darling)

