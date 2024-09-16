# Running ipyrad via nextflow

<br>
<br>
<br>


In the very first steps right now of setting up this workflow.


`ipyrad.nf` - Nextflow workflow

This is very basic right now and has the ipyrad params file hardcoded and requires going into an ipyrad env first.




To do:

- make substitutable params in the params file to be edited by NF
- use conda or docker to manage ipyrad
- test more than just step 1



Testing:


```
salloc -A inbreh -t 0-03:00 --mem=10G --cpus-per-task=24
module load nextflow/23.10.1 miniconda3/24.3.0
conda activate ipyrad

nextflow run ipyrad.nf
```