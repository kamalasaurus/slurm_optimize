#!/bin/bash

#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=05:00:00
#SBATCH --mem=2GB
#SBATCH --output=Test_workflow.out
#SBATCH --error=Test_workflow.err
#SBATCH --job-name=Nextflow_test

module purge
module load nextflow/20.10.0

nextflow run main.nf -c /scratch/kr3059/slurm_optimize/nextflow.config
