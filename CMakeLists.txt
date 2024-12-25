cmake_minimum_required(VERSION 3.16)
project(pdf_extract LANGUAGES CXX)

include_directories(/usr/include/qt6)
include_directories(/usr/include/poppler/qt6)
link_directories(/usr/libs)

find_package(Qt6 REQUIRED COMPONENTS Core Gui)

add_library(poppler-qt6 STATIC IMPORTED GLOBAL)
set_property(TARGET poppler-qt6 PROPERTY IMPORTED_LOCATION "/usr/lib/libpoppler-qt6.so")
set_property(TARGET poppler-qt6 PROPERTY IMPORTED_SONAME TRUE)

set(SOURCE_FILES
    main.cpp
    main.cpp pdffile.h
    pdffile.cpp)

add_executable(pdf_extract ${SOURCE_FILES})

target_link_libraries(pdf_extract PRIVATE poppler-qt6 Qt6::Core Qt6::Gui)

install(TARGETS pdf_extract RUNTIME DESTINATION bin)
