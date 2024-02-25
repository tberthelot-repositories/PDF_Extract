cmake_minimum_required(VERSION 3.0)

project(pdf_extract)

add_executable(pdf_extract main.cpp)

install(TARGETS pdf_extract RUNTIME DESTINATION bin)
