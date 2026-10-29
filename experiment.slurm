#!/bin/bash
#SBATCH --job-name=it254-experiment
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=256M
#SBATCH --time=00:02:00
#SBATCH --output=experiment-%j.out
echo "IT 254 - CPU Scheduling Experiment"
echo "Job ID: $SLURM_JOB_ID"
echo "Compute node: $(hostname)"
echo "TEST 1: Sleeping Process"
sleep 30
echo "Sleeping test completed."
echo "TEST 2: Busy Process"
start=$SECONDS
counter=0
while (( SECONDS - start < 30 )); do
    (( counter += 1 ))
done
echo "Counter increments: $counter"
echo "Busy test completed."
echo "Experiment finished."
