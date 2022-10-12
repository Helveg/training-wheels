
find_package(Cython)
#find_package(PythonExtensions)

add_cython_target(hello hello.pyx CXX PY3)
add_library(hello MODULE hello.cxx)

target_include_directories( hello PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${Python3_INCLUDE_DIR}
)

set_target_properties( hello PROPERTIES PREFIX "")

install(TARGETS hello LIBRARY DESTINATION _hello)
