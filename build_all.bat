md build
cd build
conan install ..
cmake -DBUILD_TESTING=TRUE -DBUILD_SHARED_LIBS=TRUE ..
cmake --build .
REM cmake --build . --target format
cmake --build . --target package
pause