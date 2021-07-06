nextflow.enable.dsl=2
include { sayHello } from './extmodules/nextflow-hello-dsl2/main'

workflow {
  sayHello('Hej')
}
