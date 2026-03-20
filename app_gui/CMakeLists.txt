cmake_minimum_required(VERSION 3.16)
project(oapv_app_gui LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(GUI_SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src/ui")

find_package(Qt6 REQUIRED COMPONENTS Widgets)

add_executable(oapv_app_gui
        src/main.cpp
        src/ui/mainwindow.cpp
        src/ui/mainwindow.h
        src/ui/mainwindow.ui
)

target_include_directories(oapv_app_gui PRIVATE
        ${GUI_SRC_DIR}
)
target_link_libraries(oapv_app_gui PRIVATE oapv)

set_target_properties(oapv_app_gui PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

install(TARGETS oapv_app_gui
        DESTINATION bin
)
target_link_libraries(oapv_app_gui PRIVATE
        Qt6::Widgets
        oapv
)
