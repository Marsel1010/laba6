# Имя пакета
set(CPACK_PACKAGE_NAME "solver")

# Версия пакета
set(CPACK_PACKAGE_VERSION "1.0.0")

# Описание пакета
set(CPACK_PACKAGE_DESCRIPTION "Solver Application from Lab Project")

# Контакт разработчика
set(CPACK_PACKAGE_CONTACT "your.email@example.com")

# Лицензия (обязательно для RPM/DEB)
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)

# Поддержка мультимедиа иконок (если нужно)
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-Linux")

# Генераторы: TGZ, ZIP, DEB, RPM
set(CPACK_GENERATOR "TGZ;ZIP;DEB;RPM")

# Путь установки внутри пакета
set(CPACK_PACKAGING_INSTALL_PREFIX "/usr")

# Настройки для RPM
set(CPACK_RPM_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-Linux.rpm")
set(CPACK_RPM_PACKAGE_SUMMARY "Solver Application from Lab Project")
set(CPACK_RPM_PACKAGE_GROUP "Applications/Engineering")
set(CPACK_RPM_PACKAGE_RELEASE 1) # Номер релиза

# Настройки для DEB
set(CPACK_DEBIAN_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-Linux.deb")
set(CPACK_DEBIAN_PACKAGE_SECTION "utils")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Your Name")

# Исключаем ненужные файлы из source package
set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")
set(CPACK_SOURCE_IGNORE_FILES "/build" "\\.git" "~$" "\\.swp$")
