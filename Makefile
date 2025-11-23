# Set the compiler and flags
CXX = g++
CXXFLAGS = -Wall -I"C:/raylib/include"

# Set the Raylib library path
LDFLAGS = -L"C:/raylib/lib" -lraylib -lopengl32 -lgdi32 -lwinmm

# The source files
SRCS = main.cpp graph.cpp
OBJS = $(SRCS:.cpp=.o)

# Output executable name
TARGET = Sociograph.exe

# Default target (build the project)
all: $(TARGET)

# Link the object files to create the executable
$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $(TARGET) $(LDFLAGS)

# Compile the source files into object files
.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up object files and the executable
clean:
	del /q $(OBJS) $(TARGET)