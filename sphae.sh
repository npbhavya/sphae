#!/bin/bash

#SBATCH --job-name=sphae
#SBATCH --mail-type=ALL
#SBATCH --output=%x-%j.out.txt
#SBATCH --error=%x-%j.err.txt
#SBATCH --time=1-0
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=500G
#SBATCH --partition=high-capacity
#SBATCH --qos=hc-concurrent-jobs

#sphae install
#sphae run --input tests/data/illumina-subset --threads 64 -k 
#sphae run --input tests/data/nanopore-subset --sequencing longread --threads 64 -k
sphae run --input tests/data/nanopore-subset --sequencing longread --threads 64 -k --no_medaka  --db_dir tests/db
#sphae annotate --genome tests/data/genome --threads 64
