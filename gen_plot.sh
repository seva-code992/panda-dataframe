#!/bin/bash
#SBATCH --job-name=Bepen_plots 
#SBATCH --output=output_plots.txt
#SBATCH --time=10:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4      
#SBATCH --mem=16G          
#SBATCH --gres=gpu:tesla:1   
#SBATCH --partition=gpu


uv venv 
source .venv/bin/activate 
uv pip install pandas plotnine
uv run nonbio_bepen_plot.py
uv run typo_bepen_plot.py
uv run synonym_bepen_plot.py