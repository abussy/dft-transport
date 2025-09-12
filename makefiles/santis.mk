### uenv start /capstor/scratch/cscs/abussy/dft-transport/cp2k_pexsi.squashfs --view=develop
LEX      = flex
YACC     = bison

CXX      = mpic++ 
CC       = gcc 
NVCC     = nvcc

CFLAGS    = -g -w -Wall -fopenmp 
CXXFLAGS  = -std=c++11 $(CFLAGS)
NVCCFLAGS = -arch=compute_90 -code=sm_90 

TOP_DIR       = /user-environment/linux-sles15-neoverse_v2/gcc-12.3.0
LIB_TOP       = $(TOP_DIR)

# Common include paths
INCSLUDIST    = -I$(LIB_TOP)/superlu-dist-7.2.0-ixnsuq3radole4jtapijax7rwnhkswfq/include
INCPEXSI      = -I$(LIB_TOP)/pexsi-2.0.0-dimbmu55txlkgcwk5csbvqnif5pgzpxw/include
INCCUDA       = -I$(LIB_TOP)/cuda-12.4.0-42oljrxmbeto3r2wyioidcvejomkpwfu/include

# Common library paths
LIBMETIS      = -L$(LIB_TOP)/metis-5.1.0-gp5q6nzcp3wopwvpulvxfqkasgcktbyt/lib
LIBPARMETIS   = -L$(LIB_TOP)/parmetis-4.0.3-65wvt24dxvvg2zwi2mo25izjedgnsbh2/lib
LIBSLUDIST    = -L$(LIB_TOP)/superlu-dist-7.2.0-ixnsuq3radole4jtapijax7rwnhkswfq/lib 
LIBPEXSI      = -L$(LIB_TOP)/pexsi-2.0.0-dimbmu55txlkgcwk5csbvqnif5pgzpxw/lib
LIBSCALAPACK  = -L$(LIB_TOP)/netlib-scalapack-2.2.0-gzmpn2be24kkrfm76454yf43yfg7baxw/lib
LIBSOPENBLAS  = -L$(LIB_TOP)/openblas-0.3.28-xgbknmi3amr7omsyo35ahlbcyttjhvko/lib
LIBCP2K       = -L$(LIB_TOP)/cp2k-2025.1-awkmczjzfvcuoih66vgqtrpjz62iauzb/lib64
LIBCUDA       = -L/user-environment/env/develop/lib64/
LIBALL        = -L/user-environment/env/develop/lib/

LFLAGS   =  $(LIBALL) $(LIBCP2K)  $(LIBPEXSI) $(LIBPARMETIS) $(LIBMETIS) $(LIBSLUDIST)  $(LIBCUDA) $(LIBSCALAPACK)

DFLAGS   = -DAdd_ 

LIBS     = -lcuda -lcudart -lcublas -lcufft -lcusparse -lscalapack -lpexsi -lparmetis -lmetis -lsuperlu_dist -lcp2k -lrt -ldl -lstdc++ -lgfortran -lmpi -lopenblas

INCLUDES = $(INCPEXSI) $(INCSLUDIST) $(INCCUDA)

