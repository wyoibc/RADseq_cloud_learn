process ipyrad {
    input:
    path 'params-template.txt'

    script:
    """
    # Replace variables in params-template.txt
    sed \\
        -e "s|\\\$ASSEMBLY_NAME|${params.ASSEMBLY_NAME}|g" \\
        -e "s|\\\$PROJECT_DIR|${params.PROJECT_DIR}|g" \\
        -e "s|\\\$RAW_FASTQ_PATH|${params.RAW_FASTQ_PATH}|g" \\
        -e "s|\\\$BARCODES_PATH|${params.BARCODES_PATH}|g" \\
        -e "s|\\\$SORTED_FASTQ_PATH|${params.SORTED_FASTQ_PATH}|g" \\
        -e "s|\\\$ASSEMBLY_METHOD|${params.ASSEMBLY_METHOD}|g" \\
        -e "s|\\\$REFERENCE_SEQUENCE|${params.REFERENCE_SEQUENCE}|g" \\
        -e "s|\\\$DATATYPE|${params.DATATYPE}|g" \\
        -e "s|\\\$RESTRICTION_OVERHANG|${params.RESTRICTION_OVERHANG}|g" \\
        -e "s|\\\$MAX_LOW_QUAL_BASES|${params.MAX_LOW_QUAL_BASES}|g" \\
        -e "s|\\\$PHRED_QSCORE_OFFSET|${params.PHRED_QSCORE_OFFSET}|g" \\
        -e "s|\\\$MINDEPTH_STATISTICAL|${params.MINDEPTH_STATISTICAL}|g" \\
        -e "s|\\\$MINDEPTH_MAJRULE|${params.MINDEPTH_MAJRULE}|g" \\
        -e "s|\\\$MAXDEPTH|${params.MAXDEPTH}|g" \\
        -e "s|\\\$CLUST_THRESHOLD|${params.CLUST_THRESHOLD}|g" \\
        -e "s|\\\$MAX_BARCODE_MISMATCH|${params.MAX_BARCODE_MISMATCH}|g" \\
        -e "s|\\\$FILTER_ADAPTERS|${params.FILTER_ADAPTERS}|g" \\
        -e "s|\\\$FILTER_MIN_TRIM_LEN|${params.FILTER_MIN_TRIM_LEN}|g" \\
        -e "s|\\\$MAX_ALLELES_CONSENS|${params.MAX_ALLELES_CONSENS}|g" \\
        -e "s|\\\$MAX_NS_CONSENS|${params.MAX_NS_CONSENS}|g" \\
        -e "s|\\\$MAX_HS_CONSENS|${params.MAX_HS_CONSENS}|g" \\
        -e "s|\\\$MIN_SAMPLES_LOCUS|${params.MIN_SAMPLES_LOCUS}|g" \\
        -e "s|\\\$MAX_SNPS_LOCUS|${params.MAX_SNPS_LOCUS}|g" \\
        -e "s|\\\$MAX_INDELS_LOCUS|${params.MAX_INDELS_LOCUS}|g" \\
        -e "s|\\\$MAX_SHARED_HS_LOCUS|${params.MAX_SHARED_HS_LOCUS}|g" \\
        -e "s|\\\$TRIM_READS|${params.TRIM_READS}|g" \\
        -e "s|\\\$TRIM_LOCI|${params.TRIM_LOCI}|g" \\
        -e "s|\\\$OUTPUT_FORMATS|${params.OUTPUT_FORMATS}|g" \\
        -e "s|\\\$POP_ASSIGN_FILE|${params.POP_ASSIGN_FILE}|g" \\
        -e "s|\\\$REFERENCE_AS_FILTER|${params.REFERENCE_AS_FILTER}|g" \\
        params-template.txt > params-${params.ASSEMBLY_NAME}.txt
    
    # Run ipyrad
    ipyrad -p params-${params.ASSEMBLY_NAME}.txt -s 1 -c 24
    """
}


workflow {
    ipyrad(params.PARFILE_TEMPLATE)  // Referencing the path from the config
}
