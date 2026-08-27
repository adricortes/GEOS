set( CONFIG_NAME "ubuntu-cpu" )

# Set compilers path
set(CMAKE_C_COMPILER "/usr/bin/gcc" CACHE PATH "")
set(CMAKE_CXX_COMPILER "/usr/bin/g++" CACHE PATH "")
set(CMAKE_Fortran_COMPILER "/usr/bin/gfortran" CACHE PATH "")
set(ENABLE_FORTRAN ON CACHE BOOL "" FORCE)

# Set paths to mpi
set(ENABLE_MPI ON CACHE PATH "")
set(MPI_C_COMPILER "/usr/bin/mpicc" CACHE PATH "")
set(MPI_CXX_COMPILER "/usr/bin/mpic++" CACHE PATH "")
set(MPIEXEC "/usr/bin/mpirun" CACHE PATH "")

# Set paths to blas and lapack
set( BLAS_LIBRARIES "/usr/lib/x86_64-linux-gnu/blas/libblas.so" CACHE PATH "" FORCE )
set( LAPACK_LIBRARIES "/usr/lib/x86_64-linux-gnu/lapack/liblapack.so" CACHE PATH "" FORCE )

# Cuda and openMP
set( ENABLE_CUDA OFF CACHE PATH "" FORCE )
set( ENABLE_OPENMP OFF CACHE PATH "" FORCE )

# TPLs
set( ENABLE_TRILINOS OFF CACHE PATH "" FORCE )
set( ENABLE_CALIPER OFF CACHE PATH "" FORCE )
set( ENABLE_DOXYGEN OFF CACHE BOOL "" FORCE)
set( ENABLE_MATHPRESSO ON CACHE BOOL "" FORCE )

if(NOT ( EXISTS "${GEOS_TPL_DIR}" AND IS_DIRECTORY "${GEOS_TPL_DIR}" ) )
   set(GEOS_TPL_DIR "${CMAKE_SOURCE_DIR}/../../thirdPartyLibs/install-${CONFIG_NAME}-release" CACHE PATH "" FORCE )
endif()

include(${CMAKE_CURRENT_LIST_DIR}/tpls.cmake)
