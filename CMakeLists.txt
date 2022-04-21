cmake_minimum_required(VERSION 3.20)

project("redirected-stdin-stdout")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

add_executable(${PROJECT_NAME} 
    "src/main.cpp"
)
