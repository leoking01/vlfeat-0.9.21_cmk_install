#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "vlfeat::vlfeat" for configuration "Debug"
set_property(TARGET vlfeat::vlfeat APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vlfeat::vlfeat PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/vlfeat.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/vlfeat.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS vlfeat::vlfeat )
list(APPEND _IMPORT_CHECK_FILES_FOR_vlfeat::vlfeat "${_IMPORT_PREFIX}/lib/vlfeat.lib" "${_IMPORT_PREFIX}/bin/vlfeat.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
