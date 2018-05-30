message( STATUS "Setting compiler flags for ARM Cortex-M3" )

set( CMAKE_CXX_FLAGS "-mcpu=cortex-m3 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra" CACHE STRING "Target specific CXX flags")
set( CMAKE_CXX_FLAGS_DEBUG "-g3 -DDEBUG" CACHE STRING "Debug flags" )
set( CMAKE_CXX_FLAGS_RELEASE "" CACHE STRING "Release flags"  )

set( CMAKE_EXE_LINKER_FLAGS "--specs=nosys.specs" CACHE INTERNAL "" )