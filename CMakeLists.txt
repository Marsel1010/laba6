cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(formatter_inc)

add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)

option(BUILD_EXAMPLES "Build examples" ON)
option(INSTALL_EXAMPLES "Install example binaries" OFF)

if(BUILD_EXAMPLES)
    add_subdirectory(hello_world)
    add_subdirectory(solver)

    if(INSTALL_EXAMPLES)
        install(TARGETS hello_world
                RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        )
    endif()
endif()

install(TARGETS solver
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

include(GNUInstallDirs)

set(CPACK_PACKAGE_NAME "solver")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_DESCRIPTION "Solver Application")
set(CPACK_PACKAGE_CONTACT "your.email@example.com")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/License.rtf")

if (UNIX AND NOT APPLE)
    set(CPACK_GENERATOR "DEB;RPM")
elseif(APPLE)
    set(CPACK_GENERATOR "DragNDrop")
elseif(WIN32)
    set(CPACK_GENERATOR "WIX")
endif()

set(CPACK_INSTALL_CMAKE_PROJECTS
    "${CMAKE_BINARY_DIR}"
    "solver"
    ALL
    "/")

include(CPack)
