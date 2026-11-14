cmake_minimum_required(VERSION 3.20)
project(paceshell VERSION 0.1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)
qt_add_executable(paceshell src/main.cpp resources.qrc)
qt_add_qml_module(paceshell
    URI Pace VERSION 1.0
    QML_FILES
        qml/Main.qml
        qml/panels/Taskbar.qml
        qml/panels/StartMenu.qml
        qml/windows/WindowFrame.qml
        qml/apps/Placeholder.qml
)
target_link_libraries(paceshell PRIVATE Qt6::Quick Qt6::QuickControls2)
install(TARGETS paceshell DESTINATION bin)
