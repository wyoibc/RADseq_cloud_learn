/*
 * Define the default parameters 
 */

params.parfile = "/project/inbreh/radseq_cloud/tutorial/nf/params-ruber_denovo.txt" 


/*
 * Define ipyrad process
 */ 

process ipyrad {
    input:
     path(parfile)  // parfile as the params_file

    script:
    """
    ipyrad -p $parfile -s 1  -c 24 # Call ipyrad with the params file
    """
}


/*
 * Define the workflow
 */


workflow{
	ipyrad(params.parfile)
}

