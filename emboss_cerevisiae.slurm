#! /bin/bash

#SBATCH --partition=Centaurus
#SBATCH --job-name=emboss_sacch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --output=emboss_sacch.out

echo "======================================================"
echo "Start Time  : $(date)"
echo "Submit Dir  : $SLURM_SUBMIT_DIR"
echo "Job ID/Name : $SLURM_JOBID / $SLURM_JOB_NAME"
echo "Node List   : $SLURM_JOB_NODELIST"
echo "Num Tasks   : $SLURM_NTASKS total [$SLURM_NNODES nodes @ $SLURM_CPUS_ON_NODE CPUs/node]"
echo "======================================================"
echo ""

module load emboss


getorf -sequence saccharomyces_cerevisiae.fas -outseq saccharomyces_cerevisiae.orf.fas -minsize=100

echo ""
echo "======================================================"
echo "End Time   : $(date)"
echo "======================================================"
