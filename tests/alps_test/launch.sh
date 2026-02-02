#!/bin/bash -l
#SBATCH --job-name=omen
#SBATCH --time=00:30:00         #HH:MM:SS
#SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=32	# 32 MPI ranks per node
#SBATCH --cpus-per-task=8	# 8 OMP threads per rank
#SBATCH --account=csstaff
#SBATCH --hint=nomultithread
#SBATCH --hint=exclusive
#SBATCH --uenv=cp2k-omen/v1:2300149332
#SBATCH --view=develop
#SBATCH --partition=debug

# Line beblow is important for OMEN to find CP2K
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/user-environment/linux-neoverse_v2/cp2k-2026.1-2zcq35fnapveorrw55pwjsct5nasij5p/lib64/

export OMP_NUM_THREADS=$((SLURM_CPUS_PER_TASK - 1))
export CUDA_CACHE_PATH="/dev/shm/$RANDOM"
export MPICH_MALLOC_FALLBACK=1
export MPICH_GPU_SUPPORT_ENABLED=1

ulimit -s unlimited

srun --cpu-bind=socket ./mps-wrapper.sh ./transport gnr.inp > gnr.out
