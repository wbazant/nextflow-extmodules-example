# External import example

This pipeline has an import coming from a different repository.

## Usage 
Nothing special, the pipeline runs as expected:

```
$ nextflow run wbazant/nextflow-extmodules-example
N E X T F L O W  ~  version 21.04.1
Pulling wbazant/nextflow-extmodules-example ...
Launching `wbazant/nextflow-extmodules-example` [amazing_ride] - revision: 9aa97c443a [master]
executor >  local (1)
[5f/17c761] process > sayHello [100%] 1 of 1 ✔
Hej world!
```

Tested with nextflow version 21.04.1.5556.


## Adding an import as a submodule

```
mkdir extmodules
cd extmodules
git submodule add git@github.com:wbazant/nextflow-hello-dsl2.git
```

Taken from [this doc](https://git-scm.com/book/en/v2/Git-Tools-Submodules).


## Mixing with DSL1?
The above script imports a DSL2 extmodule into a DSL2 main.

You can't import something into a DSL1 main, this will happen:
```
N E X T F L O W  ~  version 21.04.1
Launching `main.nf` [focused_coulomb] - revision: a843258a57
Module feature not enabled -- Set `nextflow.enable.dsl=2` to import module files
```

You also can't import a DSL1 extmodule, this will happen:
```
N E X T F L O W  ~  version 21.04.1
Launching `main.nf` [angry_bernard] - revision: 45cc8ee345
Process clause `from` should not be provided when using DSL 2

 -- Check script './extmodules/hello/main.nf' at line: 8 or see '.nextflow.log' file for more details
```

