## How to run on CSCS machines

1) Get the correct uenv: `uenv image pull service::cp2k-omen/v1:2300149332`

2) Start the uenv in `develop` view: `uenv start cp2k-omen/v1:2300149332 --view=develop`

3) `cd` into `/src` and run `./configure --with-arch=santis.mk --with-superlu --with-pexsi`

4) In the same directory, compile OMEN: `make -j 4`

5) To run, see Slurm submission script in `/test/alps_test`. Update the script accordingly (account, resources, etc.).
The `transport` executable can be found in `/src` (suggestion: create a symbolic link to it)
