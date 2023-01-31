# MIT License 
# Copyright (c) 2018-Today Michele Adduci <adduci@tutanota.com>
#
# Project-related instructions

# Activate Testing, if given
if(BUILD_TESTING)
  enable_testing()
endif()

#####################################
# Define Targets
#####################################
add_subdirectory(ckserver)
add_subdirectory(ckdatamodel)

#####################################
# Define Install Targets
#####################################
install(TARGETS
  ckserver
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
  PUBLIC_HEADER DESTINATION include
)

install(
  FILES 
    ${CMAKE_SOURCE_DIR}/project/ckdatamodel/include/ckWidget.h 
    ${CMAKE_BINARY_DIR}/exports/ckWidget_exports.h
  DESTINATION 
    include/ckdatamodel)

install(FILES  
  ${CMAKE_SOURCE_DIR}/LICENSE
  DESTINATION .)