# ~/lab6/lab3-4/CPackConfig.cmake

set(CPACK_PACKAGE_NAME "solver")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_DESCRIPTION "Solver Application from Lab Project")
set(CPACK_PACKAGE_CONTACT "your.email@example.com")

# Для .deb
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Your Name")

# Генераторы
set(CPACK_GENERATOR "TGZ;ZIP;DEB")

# Настройки для source package
set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")
set(CPACK_SOURCE_IGNORE_FILES "/build" "\\.git" "~$" "\\.swp$")

# Дополнительно
set(CPACK_MONOLITHIC_INSTALL TRUE)
set(CPACK_PACKAGING_INSTALL_PREFIX "/")

include(CPack)
