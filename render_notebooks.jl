output_dir = "__notebook_exports"
output_dir = "."

isdir(output_dir) || mkdir(output_dir)

using Pkg;
env = mktempdir();
Pkg.activate(env);
Pkg.add([
    Pkg.PackageSpec(url="https://github.com/fonsp/PlutoUtils.jl", rev="static-export"),
    Pkg.PackageSpec(url="https://github.com/fonsp/Pluto.jl", rev="b4f583f"),
]);

import PlutoUtils.Export;


jlfiles = vcat(map(walkdir(".")) do (root, dirs, files)
    map(
        filter(files) do file
            occursin(".jl", file)
        end
        ) do file
        joinpath(root, file)
    end
end...);
notebookfiles = filter(jlfiles) do f
    readline(f) == "### A Pluto.jl notebook ###"
end;

Export.export_paths(notebookfiles; export_dir=output_dir, copy_to_temp_before_running=false);