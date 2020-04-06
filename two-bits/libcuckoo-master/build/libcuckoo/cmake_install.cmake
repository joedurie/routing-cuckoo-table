# Install script for directory: /ilab/users/jrd266/libcuckoo-master/libcuckoo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/ilab/users/jrd266/libcuckoo-master/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/libcuckoo/libcuckoo-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/libcuckoo/libcuckoo-targets.cmake"
         "/ilab/users/jrd266/libcuckoo-master/build/libcuckoo/CMakeFiles/Export/share/cmake/libcuckoo/libcuckoo-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/libcuckoo/libcuckoo-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/libcuckoo/libcuckoo-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/libcuckoo" TYPE FILE FILES "/ilab/users/jrd266/libcuckoo-master/build/libcuckoo/CMakeFiles/Export/share/cmake/libcuckoo/libcuckoo-targets.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/libcuckoo" TYPE FILE FILES
    "/ilab/users/jrd266/libcuckoo-master/libcuckoo/libcuckoo-config.cmake"
    "/ilab/users/jrd266/libcuckoo-master/build/libcuckoo/libcuckoo-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/ilab/users/jrd266/libcuckoo-master/install/include/libcuckoo/cuckoohash_config.hh;/ilab/users/jrd266/libcuckoo-master/install/include/libcuckoo/cuckoohash_map.hh;/ilab/users/jrd266/libcuckoo-master/install/include/libcuckoo/cuckoohash_util.hh;/ilab/users/jrd266/libcuckoo-master/install/include/libcuckoo/bucket_container.hh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/ilab/users/jrd266/libcuckoo-master/install/include/libcuckoo" TYPE FILE FILES
    "/ilab/users/jrd266/libcuckoo-master/libcuckoo/cuckoohash_config.hh"
    "/ilab/users/jrd266/libcuckoo-master/libcuckoo/cuckoohash_map.hh"
    "/ilab/users/jrd266/libcuckoo-master/libcuckoo/cuckoohash_util.hh"
    "/ilab/users/jrd266/libcuckoo-master/libcuckoo/bucket_container.hh"
    )
endif()

