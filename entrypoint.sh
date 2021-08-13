#!/bin/sh -l

julia -e 'using InteractiveUtils; versioninfo()'

julia --project=$1 -e 'using Pkg; Pkg.develop(PackageSpec(path=pwd())); Pkg.instantiate()'
julia --project=$1 $1/$2 $3
