mkdir("__notebook_exports");

using Pkg;
env = mktempdir();
Pkg.activate(env);
Pkg.add([
    Pkg.PackageSpec(url="https://github.com/fonsp/PlutoUtils.jl", rev="static-export"),
    Pkg.PackageSpec(url="https://github.com/fonsp/Pluto.jl", rev="d8caee9"),
]);

import PlutoUtils.Export;

Export.export_paths(["notebook.jl"]; export_dir="__notebook_exports");