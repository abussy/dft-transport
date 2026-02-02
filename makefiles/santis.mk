### uenv start cp2k-omen/v1:2300149332 --view=develop
LEX      = flex
YACC     = bison

CXX      = mpic++ 
CC       = gcc 
NVCC     = nvcc

CFLAGS    = -g -w -Wall -fopenmp 
CXXFLAGS  = -std=c++11 $(CFLAGS)
NVCCFLAGS = -arch=compute_90 -code=sm_90 

TOP_DIR       = /user-environment/linux-neoverse_v2
LIB_TOP       = $(TOP_DIR)

# Common include paths
INCSLUDIST    = -I$(LIB_TOP)/superlu-dist-7.2.0-q3mt3s6cqhdvbfsh6bnw4qpe5pr56n3c/include
INCPEXSI      = -I$(LIB_TOP)/pexsi-2.0.0-kxgcpy3vgptxarulw7uf5vj4pncoj3vb/include
INCCUDA       = -I$(LIB_TOP)/cuda-12.4.1-on2k3b5pubaaibuwjb2a23wovdzxnjkw/include

# Common library paths
LIBMETIS      = -L$(LIB_TOP)/metis-5.1.0-hya2wfem3x3fjudtd47pwcnnkb7s4k3a/lib
LIBPARMETIS   = -L$(LIB_TOP)/parmetis-4.0.3-i7a7ukpeje5oe6jvtpc3wemifj2xegfo/lib
LIBSLUDIST    = -L$(LIB_TOP)/superlu-dist-7.2.0-q3mt3s6cqhdvbfsh6bnw4qpe5pr56n3c/lib
LIBPEXSI      = -L$(LIB_TOP)/pexsi-2.0.0-kxgcpy3vgptxarulw7uf5vj4pncoj3vb/lib64
LIBSCALAPACK  = -L$(LIB_TOP)/netlib-scalapack-2.2.2-l3cft4vcrdze52ltprghtoxsjk4hwydu/lib
LIBSOPENBLAS  = -L$(LIB_TOP)/openblas-0.3.30-g2da7aftw2ajorne5d5cws3qqa5msr5o/lib
LIBCP2K       = -L$(LIB_TOP)/cp2k-2026.1-2zcq35fnapveorrw55pwjsct5nasij5p/lib64
LIBCUDA       = -L/user-environment/env/develop/lib64/
LIBALL        = -L/user-environment/env/develop/lib/

LFLAGS   =  $(LIBALL) $(LIBCP2K)  $(LIBPEXSI) $(LIBPARMETIS) $(LIBMETIS) $(LIBSLUDIST)  $(LIBCUDA) $(LIBSCALAPACK)

DFLAGS   = -DAdd_ 

LIBS     = -lcuda -lcudart -lcublas -lcufft -lcusparse -lscalapack -lpexsi -lparmetis -lmetis -lsuperlu_dist -lcp2k -lrt -ldl -lstdc++ -lgfortran -lmpi -lopenblas

INCLUDES = $(INCPEXSI) $(INCSLUDIST) $(INCCUDA)

