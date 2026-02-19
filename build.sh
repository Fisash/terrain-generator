g++ -Os -s -pthread src/*.cpp src/imgui/*.cpp -o main_linux \
    -I./include \
    $(pkg-config --cflags glfw3 glew) \
    $(pkg-config --libs glfw3 glew) \
    -lGL -lGLU -lX11 -ldl -lpthread \
    -static-libgcc -static-libstdc++ \
    -Wl,--strip-all -Wl,--gc-sections
