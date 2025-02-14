#SBATCH --partition=GPU
#SBATCH --job-name=basic_slurm_job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --gres=gpu:4
#SBATCH --time=48:00:00

echo "======================================================"
echo "Start Time  : $(date)"
echo "Submit Dir  : $SLURM_SUBMIT_DIR"
echo "Job ID/Name : $SLURM_JOBID / $SLURM_JOB_NAME"
echo "Num Tasks   : $SLURM_NTASKS total [$SLURM_NNODES nodes @ $SLURM_CPUS_ON_NODE CPUs/node]"
echo "======================================================"
echo ""

cd $SLURM_SUBMIT_DIR


python3 script.py --inputfilename /users/sghosh15/spring/spring25/data/dblp_cv_filtered.edgelist --outputfile /users/sghosh15/spring/spring25/data/centrality_cv.csv