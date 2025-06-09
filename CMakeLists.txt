cmake_minimum_required(VERSION 3.10)
project(formatter_inc)

# Настройки компилятора
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Опции сборки
option(BUILD_EXAMPLES "Build example applications" ON)
option(INSTALL_EXAMPLES "Install example binaries" OFF)

# Добавляем подпроекты
add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)

# Примеры
if(BUILD_EXAMPLES)
    add_subdirectory(hello_world)
    add_subdirectory(solver)
endif()

# Установка целевых бинарников и библиотек
include(GNUInstallDirs)

install(TARGETS solver
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(TARGETS formatter formatter_ex solver_lib
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

# Установка заголовочных файлов
install(DIRECTORY ${PROJECT_SOURCE_DIR}/formatter_lib/include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        FILES_MATCHING PATTERN "*.h")

install(DIRECTORY ${PROJECT_SOURCE_DIR}/formatter_ex_lib/include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        FILES_MATCHING PATTERN "*.h")

install(DIRECTORY ${PROJECT_SOURCE_DIR}/solver_lib/include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        FILES_MATCHING PATTERN "*.h")

# Установка примеров (по опции)
if(BUILD_EXAMPLES AND INSTALL_EXAMPLES)
    install(TARGETS hello_world
            RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
endif()

# Настройки CPack
set(CPACK_PACKAGE_NAME "solver")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_DESCRIPTION "Solver Application")
set(CPACK_PACKAGE_CONTACT "your.email@example.com")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/License.rtf")

# Выбор генератора пакетов в зависимости от ОС
if(UNIX AND NOT APPLE)
    set(CPACK_GENERATOR "DEB;RPM")
elseif(APPLE)
    set(CPACK_GENERATOR "DragNDrop")
elseif(WIN32)
    set(CPACK_GENERATOR "WIX")
endif()

# Указываем, что нужно упаковать только основной проект
set(CPACK_INSTALL_CMAKE_PROJECTS
    "${CMAKE_BINARY_DIR}"
    "solver"
    ALL
    "/")

include(CPack)
