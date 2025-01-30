# RADseq Cloud-Based Learning Module for the NIGMS Sandbox 

Wyoming INBRE


<br>


### Overview


In this tutorial, we show users how to assemble restriction-site associated DNA sequence (RADseq) data and perform some basic population genetic and phylogenetic analyses. All tutorials are presented as Jupyter notebooks.


This tutorial was developed to be executed on Google Cloud Platform, but can easily be adapted to other cloud, high performance compute, or even desktop/laptop computing systems.



<br>
<br>



### Getting started


To run this on Google Cloud Platform (GCP), you will need to have or create a Google account and GCP project.


Once you have these, navigate to [https://console.cloud.google.com/](https://console.cloud.google.com/), log in, and select the project you want to use from the dropdown in the upper left near the "Google Cloud" icon.


You will execute each tutorial in GCP's VertexAI Workbench. Follow the documentation [here](https://github.com/STRIDES/NIHCloudLabGCP/blob/main/docs/vertexai.md) to set up an instance, following steps 1-8 with the following specifications:

- Step 5: for "Region" select `us-east4-a`

- Step 7: for "Machine type" select `n2` and `n2-standard-8 (8 vCPUs, 32 GB RAM)`

- Additionally, in the Environment tab, you will need to select `Use a custom container` and enter `us-east4-docker.pkg.dev/nih-cl-shared-resources/nigms-sandbox/nigms-vertex-r-wy` in the box for "Docker container image" - **this is critical because this container includes necessary software for these tutorials**


Once you have created and started your instance, open a terminal window and clone this Github repository: `git clone https://github.com/wyoibc/RADseq_cloud_learn`. This should download all tutorial files into a directory called "RADseq_cloud_learn". Double click this directory, and then double click tutorial files within to run through tutorials.


* **When you are finished, stop your virtual machine by checking your notebook and pushing the stop button so you aren't charged for a machine that is sitting idle**



<br>
<br>
<br>


### Tutorials:


- RADseq data processing & assembly (using ipyrad): [ipyrad_tutorial.ipynb](https://github.com/wyoibc/RADseq_cloud_learn/blob/master/ipyrad_tutorial.ipynb) covers how to assemble RADseq data using the ipyrad pipeline
- Population structure in R: [popstructR.ipynb](https://github.com/wyoibc/RADseq_cloud_learn/blob/master/popstructR.ipynb) covers some basic population genetics analyses of the assembled RADseq data
- Phylogenetic tree inference: [phylo.ipynb](https://github.com/wyoibc/RADseq_cloud_learn/blob/master/phylo.ipynb) covers phylogenetic inference of the assembled RADseq data
- Plotting phylogenetic trees in R: [plot_phylo.ipynb](https://github.com/wyoibc/RADseq_cloud_learn/blob/master/plot_phylo.ipynb) covers plotting and manipulation of the phylogenetic trees estimated in the previous tutorial

<br>
