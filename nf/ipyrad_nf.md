# Running ipyrad via nextflow

<br>
<br>
<br>


In the very first steps right now of setting up this workflow.


`ipyrad.nf` - Nextflow workflow

`nextflow.config` - config file contains variables for ipyrad params that are swapped into the template params file.

`params-template.txt` - template ipyrad params file with variables to be replaced by config or command line parameters.



To do:

- use conda or docker to manage ipyrad
- test more than just step 1



Testing:


```
salloc -A inbreh -t 0-03:00 --mem=10G --cpus-per-task=24
module load nextflow/23.10.1 miniconda3/24.3.0
conda activate ipyrad

nextflow run ipyrad.nf --ASSEMBLY_NAME my_new_assembly --CLUST_THRESHOLD 0.9
```