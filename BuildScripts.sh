rm -rf build-darwin
cmake -S . -B build-darwin -DUNIVERSAL=FALSE -DCMAKE_OSX_ARCHITECTURES=arm64 -DARM=1 -DCMAKE_BUILD_TYPE=Release
cmake --build build-darwin
