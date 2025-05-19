#!/bin/bash
#SBATCH --mail-user=corentin.plumet@epfl.ch
#SBATCH --output=job_out_%j.log
#SBATCH --error=job_err_%j.log
#SBATCH --partition=standard
#SBATCH --qos=serial
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=36
#SBATCH --mem=180G
#SBATCH --time=04:00:00


# Load necessary modules
source .venv/bin/activate

echo "STARTING AT: $(date)"

python3 Project.py

echo "FINISHED AT: $(date)"