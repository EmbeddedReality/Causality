cmake_minimum_required( VERSION 3.5 )

# Set CMake modules location
set( CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/Scripts/CMake/Modules" )

# Set configured target system processor
set( CMAKE_SYSTEM_PROCESSOR ${TARGET_PROCESSOR} )

# Set toolchain file
# If no processor is specified, a generic Linux machine is expected so no special toolchain file is needed.
if( NOT ${TARGET_PROCESSOR} STREQUAL "" )
	set( CMAKE_TOOLCHAIN_FILE "${CMAKE_MODULE_PATH}/Toolchain/arm-none-eabi.cmake" )
endif()

# Once the toolchain is specified, set the project. This must be done after the toolchain setup
project( Causality )

set( APPLICATION_NAME ${PROJECT_NAME} )
set( APPLICATION_VERSION 0.1 )
set( APPLICATION_AUTHOR "Martin Kopecky <martin.monster696@gmail.com>" )

if( NOT CMAKE_BUILD_TYPE )
  set( CMAKE_BUILD_TYPE debug CACHE STRING
       "Choose the type of build, options are: None Debug Release"
       FORCE )
endif()

message( STATUS "Building in [${CMAKE_BUILD_TYPE}] mode." )

# Set where the binaries are built
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/Binary/${CMAKE_BUILD_TYPE}" )

# The OS source directory
add_subdirectory( Source/OS )