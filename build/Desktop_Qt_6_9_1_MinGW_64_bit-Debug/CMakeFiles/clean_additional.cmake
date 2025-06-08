# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appPhotoBooth_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appPhotoBooth_autogen.dir\\ParseCache.txt"
  "appPhotoBooth_autogen"
  )
endif()
