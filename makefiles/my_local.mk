# source  /home/hossein/Projects/cp2k-omen/cp2k/tools/toolchain/install/setup ; source /home/hossein/Projects/cp2k-omen/omen/install/cp2komen_envsetup
#
LEX      = flex
YACC     = bison

CXX      = mpic++ 
CC       = gcc 
NVCC     = 

CFLAGS    = -g -w -Wall -fopenmp 
CXXFLAGS  = -std=c++11 $(CFLAGS)
NVCCFLAGS = 

TOP_DIR       = /home/bussya/Documents/git/spack/opt/spack/linux-ubuntu23.10-skylake/gcc-13.2.0
LIB_TOP       = $(TOP_DIR)

# Common include paths
INCSSPARSE    = #-I$(LIB_TOP)/SuiteSparse/include/
INCMUMPS      = #-I$(LIB_TOP)/
INCHYPRE      = #-I$(LIB_TOP)/hypre/include/
INCQHULL      = #-I$(LIB_TOP)/qhull/include/libqhull/
INCMAGMA      = 
INCSLUDIST    = -I$(LIB_TOP)/superlu-dist-7.2.0-bszymed5gvpkomkyzl3nwltzrwn7tncu/include
INCPEXSI      = -I$(LIB_TOP)/pexsi-2.0.0-shmjx4yoefy3fyoyobjcbqqljjqju4ps/include

INCCUDA       = 

# Common library paths
LIBSSPARSE    = #-L$(LIB_TOP)/SuiteSparse/static -lumfpack -lamd -lcholmod -lcolamd -lccolamd -lcamd -lsuitesparseconfig
LIBMUMPS      = #-L$(LIB_TOP)/MUMPS/lib -lzmumps -ldmumps -lmumps_common -lpord -lscalapack
LIBHYPRE      = #-L$(LIB_TOP)/hypre/lib -lHYPRE
LIBQHULL      = #-L$(LIB_TOP)/qhull/lib -lqhullstatic
LIBMAGMA      = 
LIBMETIS      = -L$(LIB_TOP)/metis-5.1.0-kfnniorvnf4nqonjevqtl6do3a62syws/lib #-lmetis
LIBPARMETIS   = -L$(LIB_TOP)/parmetis-4.0.3-jsh2a7pxvd5curqxno5jum7yyl7g7sst/lib #-lparmetis
LIBSLUDIST    = -L$(LIB_TOP)/superlu-dist-7.2.0-bszymed5gvpkomkyzl3nwltzrwn7tncu/lib #-lsuperlu_dist
LIBPEXSI      = -L$(LIB_TOP)/pexsi-2.0.0-shmjx4yoefy3fyoyobjcbqqljjqju4ps/lib #-lpexsi
LIBPARDISO    = 
LIBSCALAPACK  = -L$(LIB_TOP)/netlib-scalapack-2.2.0-ktnld3wsxgy7pearwjvy65qxtjyzmdsc/lib #-lscalapack
LIBSOPENBLAS  = -L$(LIB_TOP)/openblas-0.3.28-aucciq6yymamejzo4lwgc37gokdessp2/lib #-lopenblas
#LIBDBCSR      = -L$(LIB_TOP)/dbcsr-2.7.0-pwcn7vsiwf5sph4wuagvzuexbmrq73lz/lib -ldbcsr
LIBCP2K       = -L$(LIB_TOP)/cp2k-master-wy2wem55chncymy3wq2pqmitqcbmhsxu/lib -lcp2k

LIBCUDA       = 

LFLAGS   = $(LIBCP2K) $(LIBDBCSR) $(LIBPEXSI) $(LIBPARDISO) $(LIBPARMETIS) $(LIBMETIS) $(LIBSLUDIST) $(LIBSSPARSE) $(LIBMUMPS) $(LIBHYPRE) $(LIBQHULL) $(LIBCUDA) $(LIBMAGMA) $(LIBSCALAPACK)

DFLAGS   = -DAdd_ 

LIBS     = -lscalapack -lpexsi -lparmetis -lmetis -lsuperlu_dist -lcp2k -lrt -ldl -lstdc++ -lgfortran -lmpi -lopenblas

INCLUDES = $(INCPEXSI) $(INCSLUDIST) $(INCSSPARSE) $(INCMUMPS) $(INCHYPRE) $(INCQHULL) $(INCCUDA) $(INCMAGMA)

