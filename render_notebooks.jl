using Pkg;
env = mktempdir();
Pkg.activate(env);
Pkg.add([
    Pkg.PackageSpec(url="https://github.com/fonsp/PlutoUtils.jl", rev="static-export"),
    Pkg.PackageSpec(url="https://github.com/fonsp/Pluto.jl", rev="b4f583f"),
]);

import PlutoUtils;

PlutoUtils.Export.github_action(; export_dir=".");
