include { NEXTFLOW_RUN as NFCORE_DEMO } from "./modules/local/nextflow/run/main"

workflow {
    NFCORE_DEMO (
        'nf-core/demo',            // Select nf-core pipeline
        params.nfcore_demo_opts,   // workflow opts supplied as params for flexibility
        params.nfcore_demo_params_file ? Channel.fromPath(params.nfcore_demo_params_file, checkIfExists: true) : Channel.value([]),
        params.nfcore_demo_samplesheet ? Channel.fromPath(params.nfcore_demo_samplesheet, checkIfExists: true) : Channel.value([]),
        params.nfcore_demo_add_config ? Channel.fromPath(params.nfcore_demo_add_config, checkIfExists: true) : Channel.value([]),
    )
}
