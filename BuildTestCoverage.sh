# Create build directory and configure with coverage enabled
cmake -S . -B buildtest -DENABLE_COVERAGE=ON

# Build the project
cmake --build buildtest

# Run tests to generate coverage data
cd buildtest && ctest && cd ..